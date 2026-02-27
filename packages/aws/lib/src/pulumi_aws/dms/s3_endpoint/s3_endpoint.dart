import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_endpoint_args.dart';

/// Provides a DMS (Data Migration Service) S3 endpoint resource. DMS S3 endpoints can be created, updated, deleted, and imported.
///
/// > **Note:** AWS is deprecating `extra_connection_attributes`, such as used with `aws.dms.Endpoint`. This resource is an alternative to `aws.dms.Endpoint` and does not use `extra_connection_attributes`. (AWS currently includes `extra_connection_attributes` in the raw responses to the AWS Provider requests and so they may be visible in the logs.)
///
/// > **Note:** Some of this resource's arguments have default values that come from the AWS Provider. Other default values are provided by AWS and subject to change without notice. When relying on AWS defaults, the provider state will often have a zero value. For example, the AWS Provider does not provide a default for `cdc_max_batch_interval` but the AWS default is `60` (seconds). However, the provider state will show `0` since this is the value return by AWS when no value is present. Below, we aim to flag the defaults that come from AWS (_e.g._, "AWS default...").
///
/// ## Example Usage
///
/// ### Minimal Configuration
///
/// This is the minimal configuration for an `aws.dms.S3Endpoint`. This endpoint will rely on the AWS Provider and AWS defaults.
///
///
///
/// ### Complete Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import endpoints using the `endpoint_id`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/s3Endpoint:S3Endpoint example example-dms-endpoint-tf
/// ```
class S3Endpoint extends pulumi.CustomResource {
  /// Whether to add column name information to the .csv output file. Default is `false`.
  late final pulumi.Output<bool?> addColumnName;

  /// Whether to add padding. Default is `false`. (Ignored for source endpoints.)
  late final pulumi.Output<bool?> addTrailingPaddingCharacter;

  /// S3 object prefix.
  late final pulumi.Output<String?> bucketFolder;

  /// S3 bucket name.
  late final pulumi.Output<String> bucketName;

  /// Predefined (canned) access control list for objects created in an S3 bucket. Valid values include `none`, `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Default is `none`.
  late final pulumi.Output<String?> cannedAclForObjects;

  /// Whether to write insert and update operations to .csv or .parquet output files. Default is `false`.
  late final pulumi.Output<bool?> cdcInsertsAndUpdates;

  /// Whether to write insert operations to .csv or .parquet output files. Default is `false`.
  late final pulumi.Output<bool?> cdcInsertsOnly;

  /// Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3. (AWS default is `60`.)
  late final pulumi.Output<int?> cdcMaxBatchInterval;

  /// Minimum file size condition as defined in kilobytes to output a file to Amazon S3. (AWS default is 32000 KB.)
  late final pulumi.Output<int?> cdcMinFileSize;

  /// Folder path of CDC files. If `cdc_path` is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. Supported in AWS DMS versions 3.4.2 and later. Required for CDC.
  late final pulumi.Output<String?> cdcPath;

  /// ARN for the certificate.
  late final pulumi.Output<String> certificateArn;

  /// Set to compress target files. Valid values are `GZIP` and `NONE`. Default is `NONE`. (Ignored for source endpoints.)
  late final pulumi.Output<String?> compressionType;

  /// Delimiter used to separate columns in the source files. Default is `,`.
  late final pulumi.Output<String?> csvDelimiter;

  /// Only applies if output files for a CDC load are written in .csv format. If `use_csv_no_sup_value` is set to `true`, string to use for all columns not included in the supplemental log. If you do not specify a string value, DMS uses the null value for these columns regardless of `use_csv_no_sup_value`. (Ignored for source endpoints.)
  late final pulumi.Output<String?> csvNoSupValue;

  /// String to as null when writing to the target. (AWS default is `NULL`.)
  late final pulumi.Output<String?> csvNullValue;

  /// Delimiter used to separate rows in the source files. Default is newline (_i.e._, `\n`).
  late final pulumi.Output<String?> csvRowDelimiter;

  /// Output format for the files that AWS DMS uses to create S3 objects. Valid values are `csv` and `parquet`.  (Ignored for source endpoints -- only `csv` is valid.)
  late final pulumi.Output<String?> dataFormat;

  /// Size of one data page in bytes. (AWS default is 1 MiB, _i.e._, `1048576`.)
  late final pulumi.Output<int?> dataPageSize;

  /// Date separating delimiter to use during folder partitioning. Valid values are `SLASH`, `UNDERSCORE`, `DASH`, and `NONE`. (AWS default is `SLASH`.) (Ignored for source endpoints.)
  late final pulumi.Output<String?> datePartitionDelimiter;

  /// Partition S3 bucket folders based on transaction commit dates. Default is `false`. (Ignored for source endpoints.)
  late final pulumi.Output<bool?> datePartitionEnabled;

  /// Date format to use during folder partitioning. Use this parameter when `date_partition_enabled` is set to true. Valid values are `YYYYMMDD`, `YYYYMMDDHH`, `YYYYMM`, `MMYYYYDD`, and `DDMMYYYY`. (AWS default is `YYYYMMDD`.) (Ignored for source endpoints.)
  late final pulumi.Output<String?> datePartitionSequence;

  /// Convert the current UTC time to a timezone. The conversion occurs when a date partition folder is created and a CDC filename is generated. The timezone format is Area/Location (_e.g._, `Europe/Paris`). Use this when `date_partition_enabled` is `true`. (Ignored for source endpoints.)
  late final pulumi.Output<String?> datePartitionTimezone;

  /// Undocumented argument for use as directed by AWS Support.
  late final pulumi.Output<bool?> detachTargetOnLobLookupFailureParquet;

  /// Maximum size in bytes of an encoded dictionary page of a column. (AWS default is 1 MiB, _i.e._, `1048576`.)
  late final pulumi.Output<int?> dictPageSizeLimit;

  /// Whether to enable statistics for Parquet pages and row groups. Default is `true`.
  late final pulumi.Output<bool?> enableStatistics;

  /// Type of encoding to use. Value values are `rle_dictionary`, `plain`, and `plain_dictionary`. (AWS default is `rle_dictionary`.)
  late final pulumi.Output<String?> encodingType;

  /// Server-side encryption mode that you want to encrypt your .csv or .parquet object files copied to S3. Valid values are `SSE_S3` and `SSE_KMS`. (AWS default is `SSE_S3`.) (Ignored for source endpoints -- only `SSE_S3` is valid.)
  late final pulumi.Output<String?> encryptionMode;

  /// ARN for the endpoint.
  late final pulumi.Output<String> endpointArn;

  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  late final pulumi.Output<String> endpointId;

  /// Type of endpoint. Valid values are `source`, `target`.
  late final pulumi.Output<String> endpointType;

  /// Expanded name for the engine name.
  late final pulumi.Output<String> engineDisplayName;

  /// Bucket owner to prevent sniping. Value is an AWS account ID.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Can be used for cross-account validation. Use it in another account with `aws.dms.S3Endpoint` to create the endpoint cross-account.
  late final pulumi.Output<String> externalId;

  /// JSON document that describes how AWS DMS should interpret the data. Required for `source` endpoints.
  late final pulumi.Output<String?> externalTableDefinition;

  /// Whether to integrate AWS Glue Data Catalog with an Amazon S3 target. See [Using AWS Glue Data Catalog with an Amazon S3 target for AWS DMS](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.GlueCatalog) for more information. Default is `false`.
  late final pulumi.Output<bool?> glueCatalogGeneration;

  /// When this value is set to `1`, DMS ignores the first row header in a .csv file. (AWS default is `0`.)
  late final pulumi.Output<int?> ignoreHeaderRows;

  /// Whether to enable a full load to write INSERT operations to the .csv output files only to indicate how the rows were added to the source database. Default is `false`.
  late final pulumi.Output<bool?> includeOpForFullLoad;

  /// ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  late final pulumi.Output<String> kmsKeyArn;

  /// Maximum size (in KB) of any .csv file to be created while migrating to an S3 target during full load. Valid values are from `1` to `1048576`. (AWS default is 1 GB, _i.e._, `1048576`.)
  late final pulumi.Output<int?> maxFileSize;

  /// Specifies the precision of any TIMESTAMP column values written to an S3 object file in .parquet format. Default is `false`. (Ignored for source endpoints.)
  late final pulumi.Output<bool?> parquetTimestampInMillisecond;

  /// Version of the .parquet file format. Valid values are `parquet-1-0` and `parquet-2-0`. (AWS default is `parquet-1-0`.) (Ignored for source endpoints.)
  late final pulumi.Output<String?> parquetVersion;

  /// Whether DMS saves the transaction order for a CDC load on the S3 target specified by `cdc_path`. Default is `false`. (Ignored for source endpoints.)
  late final pulumi.Output<bool?> preserveTransactions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// For an S3 source, whether each leading double quotation mark has to be followed by an ending double quotation mark. Default is `true`.
  late final pulumi.Output<bool?> rfc4180;

  /// Number of rows in a row group. (AWS default is `10000`.)
  late final pulumi.Output<int?> rowGroupLength;

  /// When `encryption_mode` is `SSE_KMS`, ARN for the AWS KMS key. (Ignored for source endpoints -- only `SSE_S3` `encryption_mode` is valid.)
  late final pulumi.Output<String?> serverSideEncryptionKmsKeyId;

  /// ARN of the IAM role with permissions to the S3 Bucket.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceAccessRoleArn;

  /// SSL mode to use for the connection. Valid values are `none`, `require`, `verify-ca`, `verify-full`. (AWS default is `none`.)
  late final pulumi.Output<String> sslMode;

  /// Status of the endpoint.
  late final pulumi.Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Column to add with timestamp information to the endpoint data for an Amazon S3 target.
  late final pulumi.Output<String?> timestampColumnName;

  /// Whether to use `csv_no_sup_value` for columns not included in the supplemental log. (Ignored for source endpoints.)
  late final pulumi.Output<bool?> useCsvNoSupValue;

  /// When set to `true`, uses the task start time as the timestamp column value instead of the time data is written to target. For full load, when set to `true`, each row of the timestamp column contains the task start time. For CDC loads, each row of the timestamp column contains the transaction commit time.When set to false, the full load timestamp in the timestamp column increments with the time data arrives at the target. Default is `false`.
  late final pulumi.Output<bool?> useTaskStartTimeForFullLoadTimestamp;

  S3Endpoint(
    String name, {
    S3EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/s3Endpoint:S3Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addColumnName = registerOutput<bool?>('addColumnName');
    this.addTrailingPaddingCharacter =
        registerOutput<bool?>('addTrailingPaddingCharacter');
    this.bucketFolder = registerOutput<String?>('bucketFolder');
    this.bucketName = registerOutput<String>('bucketName');
    this.cannedAclForObjects = registerOutput<String?>('cannedAclForObjects');
    this.cdcInsertsAndUpdates = registerOutput<bool?>('cdcInsertsAndUpdates');
    this.cdcInsertsOnly = registerOutput<bool?>('cdcInsertsOnly');
    this.cdcMaxBatchInterval = registerOutput<int?>('cdcMaxBatchInterval');
    this.cdcMinFileSize = registerOutput<int?>('cdcMinFileSize');
    this.cdcPath = registerOutput<String?>('cdcPath');
    this.certificateArn = registerOutput<String>('certificateArn');
    this.compressionType = registerOutput<String?>('compressionType');
    this.csvDelimiter = registerOutput<String?>('csvDelimiter');
    this.csvNoSupValue = registerOutput<String?>('csvNoSupValue');
    this.csvNullValue = registerOutput<String?>('csvNullValue');
    this.csvRowDelimiter = registerOutput<String?>('csvRowDelimiter');
    this.dataFormat = registerOutput<String?>('dataFormat');
    this.dataPageSize = registerOutput<int?>('dataPageSize');
    this.datePartitionDelimiter =
        registerOutput<String?>('datePartitionDelimiter');
    this.datePartitionEnabled = registerOutput<bool?>('datePartitionEnabled');
    this.datePartitionSequence =
        registerOutput<String?>('datePartitionSequence');
    this.datePartitionTimezone =
        registerOutput<String?>('datePartitionTimezone');
    this.detachTargetOnLobLookupFailureParquet =
        registerOutput<bool?>('detachTargetOnLobLookupFailureParquet');
    this.dictPageSizeLimit = registerOutput<int?>('dictPageSizeLimit');
    this.enableStatistics = registerOutput<bool?>('enableStatistics');
    this.encodingType = registerOutput<String?>('encodingType');
    this.encryptionMode = registerOutput<String?>('encryptionMode');
    this.endpointArn = registerOutput<String>('endpointArn');
    this.endpointId = registerOutput<String>('endpointId');
    this.endpointType = registerOutput<String>('endpointType');
    this.engineDisplayName = registerOutput<String>('engineDisplayName');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.externalId = registerOutput<String>('externalId');
    this.externalTableDefinition =
        registerOutput<String?>('externalTableDefinition');
    this.glueCatalogGeneration = registerOutput<bool?>('glueCatalogGeneration');
    this.ignoreHeaderRows = registerOutput<int?>('ignoreHeaderRows');
    this.includeOpForFullLoad = registerOutput<bool?>('includeOpForFullLoad');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.maxFileSize = registerOutput<int?>('maxFileSize');
    this.parquetTimestampInMillisecond =
        registerOutput<bool?>('parquetTimestampInMillisecond');
    this.parquetVersion = registerOutput<String?>('parquetVersion');
    this.preserveTransactions = registerOutput<bool?>('preserveTransactions');
    this.region = registerOutput<String>('region');
    this.rfc4180 = registerOutput<bool?>('rfc4180');
    this.rowGroupLength = registerOutput<int?>('rowGroupLength');
    this.serverSideEncryptionKmsKeyId =
        registerOutput<String?>('serverSideEncryptionKmsKeyId');
    this.serviceAccessRoleArn = registerOutput<String>('serviceAccessRoleArn');
    this.sslMode = registerOutput<String>('sslMode');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timestampColumnName = registerOutput<String?>('timestampColumnName');
    this.useCsvNoSupValue = registerOutput<bool?>('useCsvNoSupValue');
    this.useTaskStartTimeForFullLoadTimestamp =
        registerOutput<bool?>('useTaskStartTimeForFullLoadTimestamp');
  }
}
