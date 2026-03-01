[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/redshift-glue-etl/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/redshift-glue-etl/README.md#gh-dark-mode-only)

# ETL pipeline with Amazon Redshift and AWS Glue (Dart)

This example creates an ETL pipeline using Amazon Redshift and AWS Glue.

Provisioned resources include:

- VPC + subnet and a Redshift subnet group
- Private Redshift cluster and IAM role for S3 read access
- S3 bucket for source events data
- Glue catalog database and crawler
- Glue JDBC connection to Redshift
- Glue job script bucket (`glue-job.py`) and scheduled Glue trigger

## Prerequisites

- [Install Pulumi](https://www.pulumi.com/docs/get-started/install/)
- [Install Dart](https://dart.dev/get-dart)
- Configure [AWS credentials](https://www.pulumi.com/docs/iac/clouds/aws/get-started/)

## Required config

- `aws:region`
- `clusterIdentifier`
- `clusterNodeType`
- `clusterDBName`
- `clusterDBUsername`
- `clusterDBPassword` (secret)
- `glueDBName`

Example:

```sh
pulumi config set aws:region us-west-2
pulumi config set clusterIdentifier my-redshift-cluster
pulumi config set clusterNodeType ra3.xlplus
pulumi config set clusterDBName dev
pulumi config set clusterDBUsername admin
pulumi config set --secret clusterDBPassword '<password>'
pulumi config set glueDBName my-glue-db
```

## Deploy

```sh
pulumi up
```

After deployment, upload sample data to the exported bucket:

```sh
aws s3 cp events-1.txt s3://$(pulumi stack output dataBucketName)
```

## Cleanup

```sh
pulumi destroy
pulumi stack rm
```
