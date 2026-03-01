import sys
from awsglue.utils import getResolvedOptions
from awsglue.transforms import ApplyMapping
from awsglue.context import GlueContext
from awsglue.job import Job
from pyspark.context import SparkContext

args = getResolvedOptions(
    sys.argv,
    [
        "JOB_NAME",
        "TempDir",
        "ConnectionName",
        "GlueDBName",
        "GlueDBTableName",
        "RedshiftRoleARN",
        "RedshiftDBName",
        "RedshiftDBTableName",
    ],
)

glueContext = GlueContext(SparkContext.getOrCreate())

job = Job(glueContext)
job.init(args["JOB_NAME"], args)

source0 = glueContext.create_dynamic_frame.from_catalog(
    database=args["GlueDBName"],
    table_name=args["GlueDBTableName"],
    additional_options={
        "jobBookmarkKeys": ["id"],
        "jobBookmarkKeysSortOrder": "asc",
    },
    transformation_ctx="source0",
)

transformed0 = ApplyMapping.apply(
    frame=source0,
    mappings=[
        ("id", "int", "event_id", "int"),
        ("name", "string", "event_name", "string"),
    ],
)

glueContext.write_dynamic_frame.from_jdbc_conf(
    frame=transformed0,
    catalog_connection=args["ConnectionName"],
    connection_options={
        "database": args["RedshiftDBName"],
        "dbtable": args["RedshiftDBTableName"],
        "aws_iam_role": args["RedshiftRoleARN"],
    },
    redshift_tmp_dir=args["TempDir"],
)

job.commit()

