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
    bool? addColumnName,
    bool? addTrailingPaddingCharacter,
    String? bucketFolder,
    required String bucketName,
    String? cannedAclForObjects,
    bool? cdcInsertsAndUpdates,
    bool? cdcInsertsOnly,
    int? cdcMaxBatchInterval,
    int? cdcMinFileSize,
    String? cdcPath,
    String? certificateArn,
    String? compressionType,
    String? csvDelimiter,
    String? csvNoSupValue,
    String? csvNullValue,
    String? csvRowDelimiter,
    String? dataFormat,
    int? dataPageSize,
    String? datePartitionDelimiter,
    bool? datePartitionEnabled,
    String? datePartitionSequence,
    String? datePartitionTimezone,
    bool? detachTargetOnLobLookupFailureParquet,
    int? dictPageSizeLimit,
    bool? enableStatistics,
    String? encodingType,
    String? encryptionMode,
    required String endpointId,
    required String endpointType,
    String? expectedBucketOwner,
    String? externalTableDefinition,
    bool? glueCatalogGeneration,
    int? ignoreHeaderRows,
    bool? includeOpForFullLoad,
    String? kmsKeyArn,
    int? maxFileSize,
    bool? parquetTimestampInMillisecond,
    String? parquetVersion,
    bool? preserveTransactions,
    String? region,
    bool? rfc4180,
    int? rowGroupLength,
    String? serverSideEncryptionKmsKeyId,
    required String serviceAccessRoleArn,
    String? sslMode,
    Map<String, String>? tags,
    String? timestampColumnName,
    bool? useCsvNoSupValue,
    bool? useTaskStartTimeForFullLoadTimestamp,
  })  : addColumnName = pulumi.Input.asOptionalInput<bool>(addColumnName),
        addTrailingPaddingCharacter =
            pulumi.Input.asOptionalInput<bool>(addTrailingPaddingCharacter),
        bucketFolder = pulumi.Input.asOptionalInput<String>(bucketFolder),
        bucketName = pulumi.Input.asInput<String>(bucketName),
        cannedAclForObjects =
            pulumi.Input.asOptionalInput<String>(cannedAclForObjects),
        cdcInsertsAndUpdates =
            pulumi.Input.asOptionalInput<bool>(cdcInsertsAndUpdates),
        cdcInsertsOnly = pulumi.Input.asOptionalInput<bool>(cdcInsertsOnly),
        cdcMaxBatchInterval =
            pulumi.Input.asOptionalInput<int>(cdcMaxBatchInterval),
        cdcMinFileSize = pulumi.Input.asOptionalInput<int>(cdcMinFileSize),
        cdcPath = pulumi.Input.asOptionalInput<String>(cdcPath),
        certificateArn = pulumi.Input.asOptionalInput<String>(certificateArn),
        compressionType = pulumi.Input.asOptionalInput<String>(compressionType),
        csvDelimiter = pulumi.Input.asOptionalInput<String>(csvDelimiter),
        csvNoSupValue = pulumi.Input.asOptionalInput<String>(csvNoSupValue),
        csvNullValue = pulumi.Input.asOptionalInput<String>(csvNullValue),
        csvRowDelimiter = pulumi.Input.asOptionalInput<String>(csvRowDelimiter),
        dataFormat = pulumi.Input.asOptionalInput<String>(dataFormat),
        dataPageSize = pulumi.Input.asOptionalInput<int>(dataPageSize),
        datePartitionDelimiter =
            pulumi.Input.asOptionalInput<String>(datePartitionDelimiter),
        datePartitionEnabled =
            pulumi.Input.asOptionalInput<bool>(datePartitionEnabled),
        datePartitionSequence =
            pulumi.Input.asOptionalInput<String>(datePartitionSequence),
        datePartitionTimezone =
            pulumi.Input.asOptionalInput<String>(datePartitionTimezone),
        detachTargetOnLobLookupFailureParquet =
            pulumi.Input.asOptionalInput<bool>(
                detachTargetOnLobLookupFailureParquet),
        dictPageSizeLimit =
            pulumi.Input.asOptionalInput<int>(dictPageSizeLimit),
        enableStatistics = pulumi.Input.asOptionalInput<bool>(enableStatistics),
        encodingType = pulumi.Input.asOptionalInput<String>(encodingType),
        encryptionMode = pulumi.Input.asOptionalInput<String>(encryptionMode),
        endpointId = pulumi.Input.asInput<String>(endpointId),
        endpointType = pulumi.Input.asInput<String>(endpointType),
        expectedBucketOwner =
            pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
        externalTableDefinition =
            pulumi.Input.asOptionalInput<String>(externalTableDefinition),
        glueCatalogGeneration =
            pulumi.Input.asOptionalInput<bool>(glueCatalogGeneration),
        ignoreHeaderRows = pulumi.Input.asOptionalInput<int>(ignoreHeaderRows),
        includeOpForFullLoad =
            pulumi.Input.asOptionalInput<bool>(includeOpForFullLoad),
        kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
        maxFileSize = pulumi.Input.asOptionalInput<int>(maxFileSize),
        parquetTimestampInMillisecond =
            pulumi.Input.asOptionalInput<bool>(parquetTimestampInMillisecond),
        parquetVersion = pulumi.Input.asOptionalInput<String>(parquetVersion),
        preserveTransactions =
            pulumi.Input.asOptionalInput<bool>(preserveTransactions),
        region = pulumi.Input.asOptionalInput<String>(region),
        rfc4180 = pulumi.Input.asOptionalInput<bool>(rfc4180),
        rowGroupLength = pulumi.Input.asOptionalInput<int>(rowGroupLength),
        serverSideEncryptionKmsKeyId =
            pulumi.Input.asOptionalInput<String>(serverSideEncryptionKmsKeyId),
        serviceAccessRoleArn =
            pulumi.Input.asInput<String>(serviceAccessRoleArn),
        sslMode = pulumi.Input.asOptionalInput<String>(sslMode),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timestampColumnName =
            pulumi.Input.asOptionalInput<String>(timestampColumnName),
        useCsvNoSupValue = pulumi.Input.asOptionalInput<bool>(useCsvNoSupValue),
        useTaskStartTimeForFullLoadTimestamp =
            pulumi.Input.asOptionalInput<bool>(
                useTaskStartTimeForFullLoadTimestamp);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addColumnNameValue = addColumnName;
    if (addColumnNameValue != null) {
      map['addColumnName'] = addColumnNameValue;
    }
    final addTrailingPaddingCharacterValue = addTrailingPaddingCharacter;
    if (addTrailingPaddingCharacterValue != null) {
      map['addTrailingPaddingCharacter'] = addTrailingPaddingCharacterValue;
    }
    final bucketFolderValue = bucketFolder;
    if (bucketFolderValue != null) {
      map['bucketFolder'] = bucketFolderValue;
    }
    map['bucketName'] = bucketName;
    final cannedAclForObjectsValue = cannedAclForObjects;
    if (cannedAclForObjectsValue != null) {
      map['cannedAclForObjects'] = cannedAclForObjectsValue;
    }
    final cdcInsertsAndUpdatesValue = cdcInsertsAndUpdates;
    if (cdcInsertsAndUpdatesValue != null) {
      map['cdcInsertsAndUpdates'] = cdcInsertsAndUpdatesValue;
    }
    final cdcInsertsOnlyValue = cdcInsertsOnly;
    if (cdcInsertsOnlyValue != null) {
      map['cdcInsertsOnly'] = cdcInsertsOnlyValue;
    }
    final cdcMaxBatchIntervalValue = cdcMaxBatchInterval;
    if (cdcMaxBatchIntervalValue != null) {
      map['cdcMaxBatchInterval'] = cdcMaxBatchIntervalValue;
    }
    final cdcMinFileSizeValue = cdcMinFileSize;
    if (cdcMinFileSizeValue != null) {
      map['cdcMinFileSize'] = cdcMinFileSizeValue;
    }
    final cdcPathValue = cdcPath;
    if (cdcPathValue != null) {
      map['cdcPath'] = cdcPathValue;
    }
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    final compressionTypeValue = compressionType;
    if (compressionTypeValue != null) {
      map['compressionType'] = compressionTypeValue;
    }
    final csvDelimiterValue = csvDelimiter;
    if (csvDelimiterValue != null) {
      map['csvDelimiter'] = csvDelimiterValue;
    }
    final csvNoSupValueValue = csvNoSupValue;
    if (csvNoSupValueValue != null) {
      map['csvNoSupValue'] = csvNoSupValueValue;
    }
    final csvNullValueValue = csvNullValue;
    if (csvNullValueValue != null) {
      map['csvNullValue'] = csvNullValueValue;
    }
    final csvRowDelimiterValue = csvRowDelimiter;
    if (csvRowDelimiterValue != null) {
      map['csvRowDelimiter'] = csvRowDelimiterValue;
    }
    final dataFormatValue = dataFormat;
    if (dataFormatValue != null) {
      map['dataFormat'] = dataFormatValue;
    }
    final dataPageSizeValue = dataPageSize;
    if (dataPageSizeValue != null) {
      map['dataPageSize'] = dataPageSizeValue;
    }
    final datePartitionDelimiterValue = datePartitionDelimiter;
    if (datePartitionDelimiterValue != null) {
      map['datePartitionDelimiter'] = datePartitionDelimiterValue;
    }
    final datePartitionEnabledValue = datePartitionEnabled;
    if (datePartitionEnabledValue != null) {
      map['datePartitionEnabled'] = datePartitionEnabledValue;
    }
    final datePartitionSequenceValue = datePartitionSequence;
    if (datePartitionSequenceValue != null) {
      map['datePartitionSequence'] = datePartitionSequenceValue;
    }
    final datePartitionTimezoneValue = datePartitionTimezone;
    if (datePartitionTimezoneValue != null) {
      map['datePartitionTimezone'] = datePartitionTimezoneValue;
    }
    final detachTargetOnLobLookupFailureParquetValue =
        detachTargetOnLobLookupFailureParquet;
    if (detachTargetOnLobLookupFailureParquetValue != null) {
      map['detachTargetOnLobLookupFailureParquet'] =
          detachTargetOnLobLookupFailureParquetValue;
    }
    final dictPageSizeLimitValue = dictPageSizeLimit;
    if (dictPageSizeLimitValue != null) {
      map['dictPageSizeLimit'] = dictPageSizeLimitValue;
    }
    final enableStatisticsValue = enableStatistics;
    if (enableStatisticsValue != null) {
      map['enableStatistics'] = enableStatisticsValue;
    }
    final encodingTypeValue = encodingType;
    if (encodingTypeValue != null) {
      map['encodingType'] = encodingTypeValue;
    }
    final encryptionModeValue = encryptionMode;
    if (encryptionModeValue != null) {
      map['encryptionMode'] = encryptionModeValue;
    }
    map['endpointId'] = endpointId;
    map['endpointType'] = endpointType;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final externalTableDefinitionValue = externalTableDefinition;
    if (externalTableDefinitionValue != null) {
      map['externalTableDefinition'] = externalTableDefinitionValue;
    }
    final glueCatalogGenerationValue = glueCatalogGeneration;
    if (glueCatalogGenerationValue != null) {
      map['glueCatalogGeneration'] = glueCatalogGenerationValue;
    }
    final ignoreHeaderRowsValue = ignoreHeaderRows;
    if (ignoreHeaderRowsValue != null) {
      map['ignoreHeaderRows'] = ignoreHeaderRowsValue;
    }
    final includeOpForFullLoadValue = includeOpForFullLoad;
    if (includeOpForFullLoadValue != null) {
      map['includeOpForFullLoad'] = includeOpForFullLoadValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final maxFileSizeValue = maxFileSize;
    if (maxFileSizeValue != null) {
      map['maxFileSize'] = maxFileSizeValue;
    }
    final parquetTimestampInMillisecondValue = parquetTimestampInMillisecond;
    if (parquetTimestampInMillisecondValue != null) {
      map['parquetTimestampInMillisecond'] = parquetTimestampInMillisecondValue;
    }
    final parquetVersionValue = parquetVersion;
    if (parquetVersionValue != null) {
      map['parquetVersion'] = parquetVersionValue;
    }
    final preserveTransactionsValue = preserveTransactions;
    if (preserveTransactionsValue != null) {
      map['preserveTransactions'] = preserveTransactionsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rfc4180Value = rfc4180;
    if (rfc4180Value != null) {
      map['rfc4180'] = rfc4180Value;
    }
    final rowGroupLengthValue = rowGroupLength;
    if (rowGroupLengthValue != null) {
      map['rowGroupLength'] = rowGroupLengthValue;
    }
    final serverSideEncryptionKmsKeyIdValue = serverSideEncryptionKmsKeyId;
    if (serverSideEncryptionKmsKeyIdValue != null) {
      map['serverSideEncryptionKmsKeyId'] = serverSideEncryptionKmsKeyIdValue;
    }
    map['serviceAccessRoleArn'] = serviceAccessRoleArn;
    final sslModeValue = sslMode;
    if (sslModeValue != null) {
      map['sslMode'] = sslModeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timestampColumnNameValue = timestampColumnName;
    if (timestampColumnNameValue != null) {
      map['timestampColumnName'] = timestampColumnNameValue;
    }
    final useCsvNoSupValueValue = useCsvNoSupValue;
    if (useCsvNoSupValueValue != null) {
      map['useCsvNoSupValue'] = useCsvNoSupValueValue;
    }
    final useTaskStartTimeForFullLoadTimestampValue =
        useTaskStartTimeForFullLoadTimestamp;
    if (useTaskStartTimeForFullLoadTimestampValue != null) {
      map['useTaskStartTimeForFullLoadTimestamp'] =
          useTaskStartTimeForFullLoadTimestampValue;
    }
    return map;
  }

  factory S3EndpointArgs.fromMap(Map<String, dynamic> map) {
    return S3EndpointArgs(
      addColumnName:
          map['addColumnName'] == null ? null : map['addColumnName'] as bool,
      addTrailingPaddingCharacter: map['addTrailingPaddingCharacter'] == null
          ? null
          : map['addTrailingPaddingCharacter'] as bool,
      bucketFolder:
          map['bucketFolder'] == null ? null : map['bucketFolder'] as String,
      bucketName: map['bucketName'] as String,
      cannedAclForObjects: map['cannedAclForObjects'] == null
          ? null
          : map['cannedAclForObjects'] as String,
      cdcInsertsAndUpdates: map['cdcInsertsAndUpdates'] == null
          ? null
          : map['cdcInsertsAndUpdates'] as bool,
      cdcInsertsOnly:
          map['cdcInsertsOnly'] == null ? null : map['cdcInsertsOnly'] as bool,
      cdcMaxBatchInterval: map['cdcMaxBatchInterval'] == null
          ? null
          : map['cdcMaxBatchInterval'] as int,
      cdcMinFileSize:
          map['cdcMinFileSize'] == null ? null : map['cdcMinFileSize'] as int,
      cdcPath: map['cdcPath'] == null ? null : map['cdcPath'] as String,
      certificateArn: map['certificateArn'] == null
          ? null
          : map['certificateArn'] as String,
      compressionType: map['compressionType'] == null
          ? null
          : map['compressionType'] as String,
      csvDelimiter:
          map['csvDelimiter'] == null ? null : map['csvDelimiter'] as String,
      csvNoSupValue:
          map['csvNoSupValue'] == null ? null : map['csvNoSupValue'] as String,
      csvNullValue:
          map['csvNullValue'] == null ? null : map['csvNullValue'] as String,
      csvRowDelimiter: map['csvRowDelimiter'] == null
          ? null
          : map['csvRowDelimiter'] as String,
      dataFormat:
          map['dataFormat'] == null ? null : map['dataFormat'] as String,
      dataPageSize:
          map['dataPageSize'] == null ? null : map['dataPageSize'] as int,
      datePartitionDelimiter: map['datePartitionDelimiter'] == null
          ? null
          : map['datePartitionDelimiter'] as String,
      datePartitionEnabled: map['datePartitionEnabled'] == null
          ? null
          : map['datePartitionEnabled'] as bool,
      datePartitionSequence: map['datePartitionSequence'] == null
          ? null
          : map['datePartitionSequence'] as String,
      datePartitionTimezone: map['datePartitionTimezone'] == null
          ? null
          : map['datePartitionTimezone'] as String,
      detachTargetOnLobLookupFailureParquet:
          map['detachTargetOnLobLookupFailureParquet'] == null
              ? null
              : map['detachTargetOnLobLookupFailureParquet'] as bool,
      dictPageSizeLimit: map['dictPageSizeLimit'] == null
          ? null
          : map['dictPageSizeLimit'] as int,
      enableStatistics: map['enableStatistics'] == null
          ? null
          : map['enableStatistics'] as bool,
      encodingType:
          map['encodingType'] == null ? null : map['encodingType'] as String,
      encryptionMode: map['encryptionMode'] == null
          ? null
          : map['encryptionMode'] as String,
      endpointId: map['endpointId'] as String,
      endpointType: map['endpointType'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      externalTableDefinition: map['externalTableDefinition'] == null
          ? null
          : map['externalTableDefinition'] as String,
      glueCatalogGeneration: map['glueCatalogGeneration'] == null
          ? null
          : map['glueCatalogGeneration'] as bool,
      ignoreHeaderRows: map['ignoreHeaderRows'] == null
          ? null
          : map['ignoreHeaderRows'] as int,
      includeOpForFullLoad: map['includeOpForFullLoad'] == null
          ? null
          : map['includeOpForFullLoad'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      maxFileSize:
          map['maxFileSize'] == null ? null : map['maxFileSize'] as int,
      parquetTimestampInMillisecond:
          map['parquetTimestampInMillisecond'] == null
              ? null
              : map['parquetTimestampInMillisecond'] as bool,
      parquetVersion: map['parquetVersion'] == null
          ? null
          : map['parquetVersion'] as String,
      preserveTransactions: map['preserveTransactions'] == null
          ? null
          : map['preserveTransactions'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      rfc4180: map['rfc4180'] == null ? null : map['rfc4180'] as bool,
      rowGroupLength:
          map['rowGroupLength'] == null ? null : map['rowGroupLength'] as int,
      serverSideEncryptionKmsKeyId: map['serverSideEncryptionKmsKeyId'] == null
          ? null
          : map['serverSideEncryptionKmsKeyId'] as String,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] as String,
      sslMode: map['sslMode'] == null ? null : map['sslMode'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timestampColumnName: map['timestampColumnName'] == null
          ? null
          : map['timestampColumnName'] as String,
      useCsvNoSupValue: map['useCsvNoSupValue'] == null
          ? null
          : map['useCsvNoSupValue'] as bool,
      useTaskStartTimeForFullLoadTimestamp:
          map['useTaskStartTimeForFullLoadTimestamp'] == null
              ? null
              : map['useTaskStartTimeForFullLoadTimestamp'] as bool,
    );
  }
}
