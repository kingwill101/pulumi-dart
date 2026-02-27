// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for S3Endpoint.
class S3EndpointArgs {
  /// Whether to add column name information to the .csv output file. Default is `false`.
  final Input<bool>? addColumnName;

  /// Whether to add padding. Default is `false`. (Ignored for source endpoints.)
  final Input<bool>? addTrailingPaddingCharacter;

  /// S3 object prefix.
  final Input<String>? bucketFolder;

  /// S3 bucket name.
  final Input<String> bucketName;

  /// Predefined (canned) access control list for objects created in an S3 bucket. Valid values include `none`, `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Default is `none`.
  final Input<String>? cannedAclForObjects;

  /// Whether to write insert and update operations to .csv or .parquet output files. Default is `false`.
  final Input<bool>? cdcInsertsAndUpdates;

  /// Whether to write insert operations to .csv or .parquet output files. Default is `false`.
  final Input<bool>? cdcInsertsOnly;

  /// Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3. (AWS default is `60`.)
  final Input<int>? cdcMaxBatchInterval;

  /// Minimum file size condition as defined in kilobytes to output a file to Amazon S3. (AWS default is 32000 KB.)
  final Input<int>? cdcMinFileSize;

  /// Folder path of CDC files. If `cdc_path` is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. Supported in AWS DMS versions 3.4.2 and later. Required for CDC.
  final Input<String>? cdcPath;

  /// ARN for the certificate.
  final Input<String>? certificateArn;

  /// Set to compress target files. Valid values are `GZIP` and `NONE`. Default is `NONE`. (Ignored for source endpoints.)
  final Input<String>? compressionType;

  /// Delimiter used to separate columns in the source files. Default is `,`.
  final Input<String>? csvDelimiter;

  /// Only applies if output files for a CDC load are written in .csv format. If `use_csv_no_sup_value` is set to `true`, string to use for all columns not included in the supplemental log. If you do not specify a string value, DMS uses the null value for these columns regardless of `use_csv_no_sup_value`. (Ignored for source endpoints.)
  final Input<String>? csvNoSupValue;

  /// String to as null when writing to the target. (AWS default is `NULL`.)
  final Input<String>? csvNullValue;

  /// Delimiter used to separate rows in the source files. Default is newline (_i.e._, `\n`).
  final Input<String>? csvRowDelimiter;

  /// Output format for the files that AWS DMS uses to create S3 objects. Valid values are `csv` and `parquet`.  (Ignored for source endpoints -- only `csv` is valid.)
  final Input<String>? dataFormat;

  /// Size of one data page in bytes. (AWS default is 1 MiB, _i.e._, `1048576`.)
  final Input<int>? dataPageSize;

  /// Date separating delimiter to use during folder partitioning. Valid values are `SLASH`, `UNDERSCORE`, `DASH`, and `NONE`. (AWS default is `SLASH`.) (Ignored for source endpoints.)
  final Input<String>? datePartitionDelimiter;

  /// Partition S3 bucket folders based on transaction commit dates. Default is `false`. (Ignored for source endpoints.)
  final Input<bool>? datePartitionEnabled;

  /// Date format to use during folder partitioning. Use this parameter when `date_partition_enabled` is set to true. Valid values are `YYYYMMDD`, `YYYYMMDDHH`, `YYYYMM`, `MMYYYYDD`, and `DDMMYYYY`. (AWS default is `YYYYMMDD`.) (Ignored for source endpoints.)
  final Input<String>? datePartitionSequence;

  /// Convert the current UTC time to a timezone. The conversion occurs when a date partition folder is created and a CDC filename is generated. The timezone format is Area/Location (_e.g._, `Europe/Paris`). Use this when `date_partition_enabled` is `true`. (Ignored for source endpoints.)
  final Input<String>? datePartitionTimezone;

  /// Undocumented argument for use as directed by AWS Support.
  final Input<bool>? detachTargetOnLobLookupFailureParquet;

  /// Maximum size in bytes of an encoded dictionary page of a column. (AWS default is 1 MiB, _i.e._, `1048576`.)
  final Input<int>? dictPageSizeLimit;

  /// Whether to enable statistics for Parquet pages and row groups. Default is `true`.
  final Input<bool>? enableStatistics;

  /// Type of encoding to use. Value values are `rle_dictionary`, `plain`, and `plain_dictionary`. (AWS default is `rle_dictionary`.)
  final Input<String>? encodingType;

  /// Server-side encryption mode that you want to encrypt your .csv or .parquet object files copied to S3. Valid values are `SSE_S3` and `SSE_KMS`. (AWS default is `SSE_S3`.) (Ignored for source endpoints -- only `SSE_S3` is valid.)
  final Input<String>? encryptionMode;

  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  final Input<String> endpointId;

  /// Type of endpoint. Valid values are `source`, `target`.
  final Input<String> endpointType;

  /// Bucket owner to prevent sniping. Value is an AWS account ID.
  final Input<String>? expectedBucketOwner;

  /// JSON document that describes how AWS DMS should interpret the data. Required for `source` endpoints.
  final Input<String>? externalTableDefinition;

  /// Whether to integrate AWS Glue Data Catalog with an Amazon S3 target. See [Using AWS Glue Data Catalog with an Amazon S3 target for AWS DMS](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.GlueCatalog) for more information. Default is `false`.
  final Input<bool>? glueCatalogGeneration;

  /// When this value is set to `1`, DMS ignores the first row header in a .csv file. (AWS default is `0`.)
  final Input<int>? ignoreHeaderRows;

  /// Whether to enable a full load to write INSERT operations to the .csv output files only to indicate how the rows were added to the source database. Default is `false`.
  final Input<bool>? includeOpForFullLoad;

  /// ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  final Input<String>? kmsKeyArn;

  /// Maximum size (in KB) of any .csv file to be created while migrating to an S3 target during full load. Valid values are from `1` to `1048576`. (AWS default is 1 GB, _i.e._, `1048576`.)
  final Input<int>? maxFileSize;

  /// Specifies the precision of any TIMESTAMP column values written to an S3 object file in .parquet format. Default is `false`. (Ignored for source endpoints.)
  final Input<bool>? parquetTimestampInMillisecond;

  /// Version of the .parquet file format. Valid values are `parquet-1-0` and `parquet-2-0`. (AWS default is `parquet-1-0`.) (Ignored for source endpoints.)
  final Input<String>? parquetVersion;

  /// Whether DMS saves the transaction order for a CDC load on the S3 target specified by `cdc_path`. Default is `false`. (Ignored for source endpoints.)
  final Input<bool>? preserveTransactions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// For an S3 source, whether each leading double quotation mark has to be followed by an ending double quotation mark. Default is `true`.
  final Input<bool>? rfc4180;

  /// Number of rows in a row group. (AWS default is `10000`.)
  final Input<int>? rowGroupLength;

  /// When `encryption_mode` is `SSE_KMS`, ARN for the AWS KMS key. (Ignored for source endpoints -- only `SSE_S3` `encryption_mode` is valid.)
  final Input<String>? serverSideEncryptionKmsKeyId;

  /// ARN of the IAM role with permissions to the S3 Bucket.
  ///
  /// The following arguments are optional:
  final Input<String> serviceAccessRoleArn;

  /// SSL mode to use for the connection. Valid values are `none`, `require`, `verify-ca`, `verify-full`. (AWS default is `none`.)
  final Input<String>? sslMode;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Column to add with timestamp information to the endpoint data for an Amazon S3 target.
  final Input<String>? timestampColumnName;

  /// Whether to use `csv_no_sup_value` for columns not included in the supplemental log. (Ignored for source endpoints.)
  final Input<bool>? useCsvNoSupValue;

  /// When set to `true`, uses the task start time as the timestamp column value instead of the time data is written to target. For full load, when set to `true`, each row of the timestamp column contains the task start time. For CDC loads, each row of the timestamp column contains the transaction commit time.When set to false, the full load timestamp in the timestamp column increments with the time data arrives at the target. Default is `false`.
  final Input<bool>? useTaskStartTimeForFullLoadTimestamp;

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
      addColumnName: Input.asOptionalInput<bool>(map['addColumnName']),
      addTrailingPaddingCharacter:
          Input.asOptionalInput<bool>(map['addTrailingPaddingCharacter']),
      bucketFolder: Input.asOptionalInput<String>(map['bucketFolder']),
      bucketName: Input.asInput<String>(map['bucketName']),
      cannedAclForObjects:
          Input.asOptionalInput<String>(map['cannedAclForObjects']),
      cdcInsertsAndUpdates:
          Input.asOptionalInput<bool>(map['cdcInsertsAndUpdates']),
      cdcInsertsOnly: Input.asOptionalInput<bool>(map['cdcInsertsOnly']),
      cdcMaxBatchInterval:
          Input.asOptionalInput<int>(map['cdcMaxBatchInterval']),
      cdcMinFileSize: Input.asOptionalInput<int>(map['cdcMinFileSize']),
      cdcPath: Input.asOptionalInput<String>(map['cdcPath']),
      certificateArn: Input.asOptionalInput<String>(map['certificateArn']),
      compressionType: Input.asOptionalInput<String>(map['compressionType']),
      csvDelimiter: Input.asOptionalInput<String>(map['csvDelimiter']),
      csvNoSupValue: Input.asOptionalInput<String>(map['csvNoSupValue']),
      csvNullValue: Input.asOptionalInput<String>(map['csvNullValue']),
      csvRowDelimiter: Input.asOptionalInput<String>(map['csvRowDelimiter']),
      dataFormat: Input.asOptionalInput<String>(map['dataFormat']),
      dataPageSize: Input.asOptionalInput<int>(map['dataPageSize']),
      datePartitionDelimiter:
          Input.asOptionalInput<String>(map['datePartitionDelimiter']),
      datePartitionEnabled:
          Input.asOptionalInput<bool>(map['datePartitionEnabled']),
      datePartitionSequence:
          Input.asOptionalInput<String>(map['datePartitionSequence']),
      datePartitionTimezone:
          Input.asOptionalInput<String>(map['datePartitionTimezone']),
      detachTargetOnLobLookupFailureParquet: Input.asOptionalInput<bool>(
          map['detachTargetOnLobLookupFailureParquet']),
      dictPageSizeLimit: Input.asOptionalInput<int>(map['dictPageSizeLimit']),
      enableStatistics: Input.asOptionalInput<bool>(map['enableStatistics']),
      encodingType: Input.asOptionalInput<String>(map['encodingType']),
      encryptionMode: Input.asOptionalInput<String>(map['encryptionMode']),
      endpointId: Input.asInput<String>(map['endpointId']),
      endpointType: Input.asInput<String>(map['endpointType']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      externalTableDefinition:
          Input.asOptionalInput<String>(map['externalTableDefinition']),
      glueCatalogGeneration:
          Input.asOptionalInput<bool>(map['glueCatalogGeneration']),
      ignoreHeaderRows: Input.asOptionalInput<int>(map['ignoreHeaderRows']),
      includeOpForFullLoad:
          Input.asOptionalInput<bool>(map['includeOpForFullLoad']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      maxFileSize: Input.asOptionalInput<int>(map['maxFileSize']),
      parquetTimestampInMillisecond:
          Input.asOptionalInput<bool>(map['parquetTimestampInMillisecond']),
      parquetVersion: Input.asOptionalInput<String>(map['parquetVersion']),
      preserveTransactions:
          Input.asOptionalInput<bool>(map['preserveTransactions']),
      region: Input.asOptionalInput<String>(map['region']),
      rfc4180: Input.asOptionalInput<bool>(map['rfc4180']),
      rowGroupLength: Input.asOptionalInput<int>(map['rowGroupLength']),
      serverSideEncryptionKmsKeyId:
          Input.asOptionalInput<String>(map['serverSideEncryptionKmsKeyId']),
      serviceAccessRoleArn: Input.asInput<String>(map['serviceAccessRoleArn']),
      sslMode: Input.asOptionalInput<String>(map['sslMode']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timestampColumnName:
          Input.asOptionalInput<String>(map['timestampColumnName']),
      useCsvNoSupValue: Input.asOptionalInput<bool>(map['useCsvNoSupValue']),
      useTaskStartTimeForFullLoadTimestamp: Input.asOptionalInput<bool>(
          map['useTaskStartTimeForFullLoadTimestamp']),
    );
  }
}
