// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_s3_endpoint_s3_endpoint_args_doc}
/// The set of arguments for S3Endpoint.
/// {@endtemplate}
/// {@macro pulumi_dms_s3_endpoint_s3_endpoint_args_doc}
class S3EndpointArgs {
  /// Whether to add column name information to the .csv output file. Default is `false`.
  final pulumi.Input<bool>? addColumnName;
  /// Whether to add padding. Default is `false`. (Ignored for source endpoints.)
  final pulumi.Input<bool>? addTrailingPaddingCharacter;
  /// S3 object prefix.
  final pulumi.Input<String>? bucketFolder;
  /// S3 bucket name.
  final pulumi.Input<String> bucketName;
  /// Predefined (canned) access control list for objects created in an S3 bucket. Valid values include `none`, `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Default is `none`.
  final pulumi.Input<String>? cannedAclForObjects;
  /// Whether to write insert and update operations to .csv or .parquet output files. Default is `false`.
  final pulumi.Input<bool>? cdcInsertsAndUpdates;
  /// Whether to write insert operations to .csv or .parquet output files. Default is `false`.
  final pulumi.Input<bool>? cdcInsertsOnly;
  /// Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3. (AWS default is `60`.)
  final pulumi.Input<int>? cdcMaxBatchInterval;
  /// Minimum file size condition as defined in kilobytes to output a file to Amazon S3. (AWS default is 32000 KB.)
  final pulumi.Input<int>? cdcMinFileSize;
  /// Folder path of CDC files. If `cdc_path` is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. Supported in AWS DMS versions 3.4.2 and later. Required for CDC.
  final pulumi.Input<String>? cdcPath;
  /// ARN for the certificate.
  final pulumi.Input<String>? certificateArn;
  /// Set to compress target files. Valid values are `GZIP` and `NONE`. Default is `NONE`. (Ignored for source endpoints.)
  final pulumi.Input<String>? compressionType;
  /// Delimiter used to separate columns in the source files. Default is `,`.
  final pulumi.Input<String>? csvDelimiter;
  /// Only applies if output files for a CDC load are written in .csv format. If `use_csv_no_sup_value` is set to `true`, string to use for all columns not included in the supplemental log. If you do not specify a string value, DMS uses the null value for these columns regardless of `use_csv_no_sup_value`. (Ignored for source endpoints.)
  final pulumi.Input<String>? csvNoSupValue;
  /// String to as null when writing to the target. (AWS default is `NULL`.)
  final pulumi.Input<String>? csvNullValue;
  /// Delimiter used to separate rows in the source files. Default is newline (_i.e._, `\n`).
  final pulumi.Input<String>? csvRowDelimiter;
  /// Output format for the files that AWS DMS uses to create S3 objects. Valid values are `csv` and `parquet`.  (Ignored for source endpoints -- only `csv` is valid.)
  final pulumi.Input<String>? dataFormat;
  /// Size of one data page in bytes. (AWS default is 1 MiB, _i.e._, `1048576`.)
  final pulumi.Input<int>? dataPageSize;
  /// Date separating delimiter to use during folder partitioning. Valid values are `SLASH`, `UNDERSCORE`, `DASH`, and `NONE`. (AWS default is `SLASH`.) (Ignored for source endpoints.)
  final pulumi.Input<String>? datePartitionDelimiter;
  /// Partition S3 bucket folders based on transaction commit dates. Default is `false`. (Ignored for source endpoints.)
  final pulumi.Input<bool>? datePartitionEnabled;
  /// Date format to use during folder partitioning. Use this parameter when `date_partition_enabled` is set to true. Valid values are `YYYYMMDD`, `YYYYMMDDHH`, `YYYYMM`, `MMYYYYDD`, and `DDMMYYYY`. (AWS default is `YYYYMMDD`.) (Ignored for source endpoints.)
  final pulumi.Input<String>? datePartitionSequence;
  /// Convert the current UTC time to a timezone. The conversion occurs when a date partition folder is created and a CDC filename is generated. The timezone format is Area/Location (_e.g._, `Europe/Paris`). Use this when `date_partition_enabled` is `true`. (Ignored for source endpoints.)
  final pulumi.Input<String>? datePartitionTimezone;
  /// Undocumented argument for use as directed by AWS Support.
  final pulumi.Input<bool>? detachTargetOnLobLookupFailureParquet;
  /// Maximum size in bytes of an encoded dictionary page of a column. (AWS default is 1 MiB, _i.e._, `1048576`.)
  final pulumi.Input<int>? dictPageSizeLimit;
  /// Whether to enable statistics for Parquet pages and row groups. Default is `true`.
  final pulumi.Input<bool>? enableStatistics;
  /// Type of encoding to use. Value values are `rle_dictionary`, `plain`, and `plain_dictionary`. (AWS default is `rle_dictionary`.)
  final pulumi.Input<String>? encodingType;
  /// Server-side encryption mode that you want to encrypt your .csv or .parquet object files copied to S3. Valid values are `SSE_S3` and `SSE_KMS`. (AWS default is `SSE_S3`.) (Ignored for source endpoints -- only `SSE_S3` is valid.)
  final pulumi.Input<String>? encryptionMode;
  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  final pulumi.Input<String> endpointId;
  /// Type of endpoint. Valid values are `source`, `target`.
  final pulumi.Input<String> endpointType;
  /// Bucket owner to prevent sniping. Value is an AWS account ID.
  final pulumi.Input<String>? expectedBucketOwner;
  /// JSON document that describes how AWS DMS should interpret the data. Required for `source` endpoints.
  final pulumi.Input<String>? externalTableDefinition;
  /// Whether to integrate AWS Glue Data Catalog with an Amazon S3 target. See [Using AWS Glue Data Catalog with an Amazon S3 target for AWS DMS](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.GlueCatalog) for more information. Default is `false`.
  final pulumi.Input<bool>? glueCatalogGeneration;
  /// When this value is set to `1`, DMS ignores the first row header in a .csv file. (AWS default is `0`.)
  final pulumi.Input<int>? ignoreHeaderRows;
  /// Whether to enable a full load to write INSERT operations to the .csv output files only to indicate how the rows were added to the source database. Default is `false`.
  final pulumi.Input<bool>? includeOpForFullLoad;
  /// ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  final pulumi.Input<String>? kmsKeyArn;
  /// Maximum size (in KB) of any .csv file to be created while migrating to an S3 target during full load. Valid values are from `1` to `1048576`. (AWS default is 1 GB, _i.e._, `1048576`.)
  final pulumi.Input<int>? maxFileSize;
  /// Specifies the precision of any TIMESTAMP column values written to an S3 object file in .parquet format. Default is `false`. (Ignored for source endpoints.)
  final pulumi.Input<bool>? parquetTimestampInMillisecond;
  /// Version of the .parquet file format. Valid values are `parquet-1-0` and `parquet-2-0`. (AWS default is `parquet-1-0`.) (Ignored for source endpoints.)
  final pulumi.Input<String>? parquetVersion;
  /// Whether DMS saves the transaction order for a CDC load on the S3 target specified by `cdc_path`. Default is `false`. (Ignored for source endpoints.)
  final pulumi.Input<bool>? preserveTransactions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// For an S3 source, whether each leading double quotation mark has to be followed by an ending double quotation mark. Default is `true`.
  final pulumi.Input<bool>? rfc4180;
  /// Number of rows in a row group. (AWS default is `10000`.)
  final pulumi.Input<int>? rowGroupLength;
  /// When `encryption_mode` is `SSE_KMS`, ARN for the AWS KMS key. (Ignored for source endpoints -- only `SSE_S3` `encryption_mode` is valid.)
  final pulumi.Input<String>? serverSideEncryptionKmsKeyId;
  /// ARN of the IAM role with permissions to the S3 Bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceAccessRoleArn;
  /// SSL mode to use for the connection. Valid values are `none`, `require`, `verify-ca`, `verify-full`. (AWS default is `none`.)
  final pulumi.Input<String>? sslMode;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Column to add with timestamp information to the endpoint data for an Amazon S3 target.
  final pulumi.Input<String>? timestampColumnName;
  /// Whether to use `csv_no_sup_value` for columns not included in the supplemental log. (Ignored for source endpoints.)
  final pulumi.Input<bool>? useCsvNoSupValue;
  /// When set to `true`, uses the task start time as the timestamp column value instead of the time data is written to target. For full load, when set to `true`, each row of the timestamp column contains the task start time. For CDC loads, each row of the timestamp column contains the transaction commit time.When set to false, the full load timestamp in the timestamp column increments with the time data arrives at the target. Default is `false`.
  final pulumi.Input<bool>? useTaskStartTimeForFullLoadTimestamp;

  /// Creates a new [S3EndpointArgs].
  /// [addColumnName] Whether to add column name information to the .csv output file. Default is `false`.
  /// [addTrailingPaddingCharacter] Whether to add padding. Default is `false`. (Ignored for source endpoints.)
  /// [bucketFolder] S3 object prefix.
  /// [bucketName] S3 bucket name.
  /// [cannedAclForObjects] Predefined (canned) access control list for objects created in an S3 bucket. Valid values include `none`, `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Default is `none`.
  /// [cdcInsertsAndUpdates] Whether to write insert and update operations to .csv or .parquet output files. Default is `false`.
  /// [cdcInsertsOnly] Whether to write insert operations to .csv or .parquet output files. Default is `false`.
  /// [cdcMaxBatchInterval] Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3. (AWS default is `60`.)
  /// [cdcMinFileSize] Minimum file size condition as defined in kilobytes to output a file to Amazon S3. (AWS default is 32000 KB.)
  /// [cdcPath] Folder path of CDC files. If `cdc_path` is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. Supported in AWS DMS versions 3.4.2 and later. Required for CDC.
  /// [certificateArn] ARN for the certificate.
  /// [compressionType] Set to compress target files. Valid values are `GZIP` and `NONE`. Default is `NONE`. (Ignored for source endpoints.)
  /// [csvDelimiter] Delimiter used to separate columns in the source files. Default is `,`.
  /// [csvNoSupValue] Only applies if output files for a CDC load are written in .csv format. If `use_csv_no_sup_value` is set to `true`, string to use for all columns not included in the supplemental log. If you do not specify a string value, DMS uses the null value for these columns regardless of `use_csv_no_sup_value`. (Ignored for source endpoints.)
  /// [csvNullValue] String to as null when writing to the target. (AWS default is `NULL`.)
  /// [csvRowDelimiter] Delimiter used to separate rows in the source files. Default is newline (_i.e._, `\n`).
  /// [dataFormat] Output format for the files that AWS DMS uses to create S3 objects. Valid values are `csv` and `parquet`.  (Ignored for source endpoints -- only `csv` is valid.)
  /// [dataPageSize] Size of one data page in bytes. (AWS default is 1 MiB, _i.e._, `1048576`.)
  /// [datePartitionDelimiter] Date separating delimiter to use during folder partitioning. Valid values are `SLASH`, `UNDERSCORE`, `DASH`, and `NONE`. (AWS default is `SLASH`.) (Ignored for source endpoints.)
  /// [datePartitionEnabled] Partition S3 bucket folders based on transaction commit dates. Default is `false`. (Ignored for source endpoints.)
  /// [datePartitionSequence] Date format to use during folder partitioning. Use this parameter when `date_partition_enabled` is set to true. Valid values are `YYYYMMDD`, `YYYYMMDDHH`, `YYYYMM`, `MMYYYYDD`, and `DDMMYYYY`. (AWS default is `YYYYMMDD`.) (Ignored for source endpoints.)
  /// [datePartitionTimezone] Convert the current UTC time to a timezone. The conversion occurs when a date partition folder is created and a CDC filename is generated. The timezone format is Area/Location (_e.g._, `Europe/Paris`). Use this when `date_partition_enabled` is `true`. (Ignored for source endpoints.)
  /// [detachTargetOnLobLookupFailureParquet] Undocumented argument for use as directed by AWS Support.
  /// [dictPageSizeLimit] Maximum size in bytes of an encoded dictionary page of a column. (AWS default is 1 MiB, _i.e._, `1048576`.)
  /// [enableStatistics] Whether to enable statistics for Parquet pages and row groups. Default is `true`.
  /// [encodingType] Type of encoding to use. Value values are `rle_dictionary`, `plain`, and `plain_dictionary`. (AWS default is `rle_dictionary`.)
  /// [encryptionMode] Server-side encryption mode that you want to encrypt your .csv or .parquet object files copied to S3. Valid values are `SSE_S3` and `SSE_KMS`. (AWS default is `SSE_S3`.) (Ignored for source endpoints -- only `SSE_S3` is valid.)
  /// [endpointId] Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  /// [endpointType] Type of endpoint. Valid values are `source`, `target`.
  /// [expectedBucketOwner] Bucket owner to prevent sniping. Value is an AWS account ID.
  /// [externalTableDefinition] JSON document that describes how AWS DMS should interpret the data. Required for `source` endpoints.
  /// [glueCatalogGeneration] Whether to integrate AWS Glue Data Catalog with an Amazon S3 target. See [Using AWS Glue Data Catalog with an Amazon S3 target for AWS DMS](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.GlueCatalog) for more information. Default is `false`.
  /// [ignoreHeaderRows] When this value is set to `1`, DMS ignores the first row header in a .csv file. (AWS default is `0`.)
  /// [includeOpForFullLoad] Whether to enable a full load to write INSERT operations to the .csv output files only to indicate how the rows were added to the source database. Default is `false`.
  /// [kmsKeyArn] ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  /// [maxFileSize] Maximum size (in KB) of any .csv file to be created while migrating to an S3 target during full load. Valid values are from `1` to `1048576`. (AWS default is 1 GB, _i.e._, `1048576`.)
  /// [parquetTimestampInMillisecond] Specifies the precision of any TIMESTAMP column values written to an S3 object file in .parquet format. Default is `false`. (Ignored for source endpoints.)
  /// [parquetVersion] Version of the .parquet file format. Valid values are `parquet-1-0` and `parquet-2-0`. (AWS default is `parquet-1-0`.) (Ignored for source endpoints.)
  /// [preserveTransactions] Whether DMS saves the transaction order for a CDC load on the S3 target specified by `cdc_path`. Default is `false`. (Ignored for source endpoints.)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rfc4180] For an S3 source, whether each leading double quotation mark has to be followed by an ending double quotation mark. Default is `true`.
  /// [rowGroupLength] Number of rows in a row group. (AWS default is `10000`.)
  /// [serverSideEncryptionKmsKeyId] When `encryption_mode` is `SSE_KMS`, ARN for the AWS KMS key. (Ignored for source endpoints -- only `SSE_S3` `encryption_mode` is valid.)
  /// [serviceAccessRoleArn] ARN of the IAM role with permissions to the S3 Bucket.
  /// [sslMode] SSL mode to use for the connection. Valid values are `none`, `require`, `verify-ca`, `verify-full`. (AWS default is `none`.)
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timestampColumnName] Column to add with timestamp information to the endpoint data for an Amazon S3 target.
  /// [useCsvNoSupValue] Whether to use `csv_no_sup_value` for columns not included in the supplemental log. (Ignored for source endpoints.)
  /// [useTaskStartTimeForFullLoadTimestamp] When set to `true`, uses the task start time as the timestamp column value instead of the time data is written to target. For full load, when set to `true`, each row of the timestamp column contains the task start time. For CDC loads, each row of the timestamp column contains the transaction commit time.When set to false, the full load timestamp in the timestamp column increments with the time data arrives at the target. Default is `false`.
  S3EndpointArgs({
    this.addColumnName,
    this.addTrailingPaddingCharacter,
    this.bucketFolder,
    required this.bucketName,
    this.cannedAclForObjects,
    this.cdcInsertsAndUpdates,
    this.cdcInsertsOnly,
    this.cdcMaxBatchInterval,
    this.cdcMinFileSize,
    this.cdcPath,
    this.certificateArn,
    this.compressionType,
    this.csvDelimiter,
    this.csvNoSupValue,
    this.csvNullValue,
    this.csvRowDelimiter,
    this.dataFormat,
    this.dataPageSize,
    this.datePartitionDelimiter,
    this.datePartitionEnabled,
    this.datePartitionSequence,
    this.datePartitionTimezone,
    this.detachTargetOnLobLookupFailureParquet,
    this.dictPageSizeLimit,
    this.enableStatistics,
    this.encodingType,
    this.encryptionMode,
    required this.endpointId,
    required this.endpointType,
    this.expectedBucketOwner,
    this.externalTableDefinition,
    this.glueCatalogGeneration,
    this.ignoreHeaderRows,
    this.includeOpForFullLoad,
    this.kmsKeyArn,
    this.maxFileSize,
    this.parquetTimestampInMillisecond,
    this.parquetVersion,
    this.preserveTransactions,
    this.region,
    this.rfc4180,
    this.rowGroupLength,
    this.serverSideEncryptionKmsKeyId,
    required this.serviceAccessRoleArn,
    this.sslMode,
    this.tags,
    this.timestampColumnName,
    this.useCsvNoSupValue,
    this.useTaskStartTimeForFullLoadTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addColumnName': ?addColumnName,
      'addTrailingPaddingCharacter': ?addTrailingPaddingCharacter,
      'bucketFolder': ?bucketFolder,
      'bucketName': bucketName,
      'cannedAclForObjects': ?cannedAclForObjects,
      'cdcInsertsAndUpdates': ?cdcInsertsAndUpdates,
      'cdcInsertsOnly': ?cdcInsertsOnly,
      'cdcMaxBatchInterval': ?cdcMaxBatchInterval,
      'cdcMinFileSize': ?cdcMinFileSize,
      'cdcPath': ?cdcPath,
      'certificateArn': ?certificateArn,
      'compressionType': ?compressionType,
      'csvDelimiter': ?csvDelimiter,
      'csvNoSupValue': ?csvNoSupValue,
      'csvNullValue': ?csvNullValue,
      'csvRowDelimiter': ?csvRowDelimiter,
      'dataFormat': ?dataFormat,
      'dataPageSize': ?dataPageSize,
      'datePartitionDelimiter': ?datePartitionDelimiter,
      'datePartitionEnabled': ?datePartitionEnabled,
      'datePartitionSequence': ?datePartitionSequence,
      'datePartitionTimezone': ?datePartitionTimezone,
      'detachTargetOnLobLookupFailureParquet': ?detachTargetOnLobLookupFailureParquet,
      'dictPageSizeLimit': ?dictPageSizeLimit,
      'enableStatistics': ?enableStatistics,
      'encodingType': ?encodingType,
      'encryptionMode': ?encryptionMode,
      'endpointId': endpointId,
      'endpointType': endpointType,
      'expectedBucketOwner': ?expectedBucketOwner,
      'externalTableDefinition': ?externalTableDefinition,
      'glueCatalogGeneration': ?glueCatalogGeneration,
      'ignoreHeaderRows': ?ignoreHeaderRows,
      'includeOpForFullLoad': ?includeOpForFullLoad,
      'kmsKeyArn': ?kmsKeyArn,
      'maxFileSize': ?maxFileSize,
      'parquetTimestampInMillisecond': ?parquetTimestampInMillisecond,
      'parquetVersion': ?parquetVersion,
      'preserveTransactions': ?preserveTransactions,
      'region': ?region,
      'rfc4180': ?rfc4180,
      'rowGroupLength': ?rowGroupLength,
      'serverSideEncryptionKmsKeyId': ?serverSideEncryptionKmsKeyId,
      'serviceAccessRoleArn': serviceAccessRoleArn,
      'sslMode': ?sslMode,
      'tags': ?tags,
      'timestampColumnName': ?timestampColumnName,
      'useCsvNoSupValue': ?useCsvNoSupValue,
      'useTaskStartTimeForFullLoadTimestamp': ?useTaskStartTimeForFullLoadTimestamp,
    };
  }

  factory S3EndpointArgs.fromMap(Map<String, dynamic> map) {
    return S3EndpointArgs(
      addColumnName: (() { final guardedValue = map['addColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      addTrailingPaddingCharacter: (() { final guardedValue = map['addTrailingPaddingCharacter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bucketFolder: (() { final guardedValue = map['bucketFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      cannedAclForObjects: (() { final guardedValue = map['cannedAclForObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cdcInsertsAndUpdates: (() { final guardedValue = map['cdcInsertsAndUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cdcInsertsOnly: (() { final guardedValue = map['cdcInsertsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cdcMaxBatchInterval: (() { final guardedValue = map['cdcMaxBatchInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cdcMinFileSize: (() { final guardedValue = map['cdcMinFileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cdcPath: (() { final guardedValue = map['cdcPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvDelimiter: (() { final guardedValue = map['csvDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvNoSupValue: (() { final guardedValue = map['csvNoSupValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvNullValue: (() { final guardedValue = map['csvNullValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvRowDelimiter: (() { final guardedValue = map['csvRowDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataPageSize: (() { final guardedValue = map['dataPageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      datePartitionDelimiter: (() { final guardedValue = map['datePartitionDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datePartitionEnabled: (() { final guardedValue = map['datePartitionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      datePartitionSequence: (() { final guardedValue = map['datePartitionSequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datePartitionTimezone: (() { final guardedValue = map['datePartitionTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detachTargetOnLobLookupFailureParquet: (() { final guardedValue = map['detachTargetOnLobLookupFailureParquet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dictPageSizeLimit: (() { final guardedValue = map['dictPageSizeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableStatistics: (() { final guardedValue = map['enableStatistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encodingType: (() { final guardedValue = map['encodingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionMode: (() { final guardedValue = map['encryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalTableDefinition: (() { final guardedValue = map['externalTableDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glueCatalogGeneration: (() { final guardedValue = map['glueCatalogGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreHeaderRows: (() { final guardedValue = map['ignoreHeaderRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      includeOpForFullLoad: (() { final guardedValue = map['includeOpForFullLoad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxFileSize: (() { final guardedValue = map['maxFileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parquetTimestampInMillisecond: (() { final guardedValue = map['parquetTimestampInMillisecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parquetVersion: (() { final guardedValue = map['parquetVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preserveTransactions: (() { final guardedValue = map['preserveTransactions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rfc4180: (() { final guardedValue = map['rfc4180']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rowGroupLength: (() { final guardedValue = map['rowGroupLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverSideEncryptionKmsKeyId: (() { final guardedValue = map['serverSideEncryptionKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccessRoleArn: pulumi.Input.fromValue(map['serviceAccessRoleArn'] as String),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timestampColumnName: (() { final guardedValue = map['timestampColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCsvNoSupValue: (() { final guardedValue = map['useCsvNoSupValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useTaskStartTimeForFullLoadTimestamp: (() { final guardedValue = map['useTaskStartTimeForFullLoadTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

