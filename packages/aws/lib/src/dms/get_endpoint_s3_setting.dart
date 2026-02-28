// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointS3Setting {
  final bool addColumnName;
  final String bucketFolder;
  final String bucketName;
  final String cannedAclForObjects;
  final bool cdcInsertsAndUpdates;
  final bool cdcInsertsOnly;
  final int cdcMaxBatchInterval;
  final int cdcMinFileSize;
  final String cdcPath;
  final String compressionType;
  final String csvDelimiter;
  final String csvNoSupValue;
  final String csvNullValue;
  final String csvRowDelimiter;
  final String dataFormat;
  final int dataPageSize;
  final String datePartitionDelimiter;
  final bool datePartitionEnabled;
  final String datePartitionSequence;
  final int dictPageSizeLimit;
  final bool enableStatistics;
  final String encodingType;
  final String encryptionMode;
  final String externalTableDefinition;
  final bool glueCatalogGeneration;
  final int ignoreHeaderRows;
  final int ignoreHeadersRow;
  final bool includeOpForFullLoad;
  final int maxFileSize;
  final bool parquetTimestampInMillisecond;
  final String parquetVersion;
  final bool preserveTransactions;
  final bool rfc4180;
  final int rowGroupLength;
  final String serverSideEncryptionKmsKeyId;
  final String serviceAccessRoleArn;
  final String timestampColumnName;
  final bool useCsvNoSupValue;
  final bool useTaskStartTimeForFullLoadTimestamp;

  /// Creates a new [GetEndpointS3Setting].
  /// [addColumnName] Required.
  /// [bucketFolder] Required.
  /// [bucketName] Required.
  /// [cannedAclForObjects] Required.
  /// [cdcInsertsAndUpdates] Required.
  /// [cdcInsertsOnly] Required.
  /// [cdcMaxBatchInterval] Required.
  /// [cdcMinFileSize] Required.
  /// [cdcPath] Required.
  /// [compressionType] Required.
  /// [csvDelimiter] Required.
  /// [csvNoSupValue] Required.
  /// [csvNullValue] Required.
  /// [csvRowDelimiter] Required.
  /// [dataFormat] Required.
  /// [dataPageSize] Required.
  /// [datePartitionDelimiter] Required.
  /// [datePartitionEnabled] Required.
  /// [datePartitionSequence] Required.
  /// [dictPageSizeLimit] Required.
  /// [enableStatistics] Required.
  /// [encodingType] Required.
  /// [encryptionMode] Required.
  /// [externalTableDefinition] Required.
  /// [glueCatalogGeneration] Required.
  /// [ignoreHeaderRows] Required.
  /// [ignoreHeadersRow] Required.
  /// [includeOpForFullLoad] Required.
  /// [maxFileSize] Required.
  /// [parquetTimestampInMillisecond] Required.
  /// [parquetVersion] Required.
  /// [preserveTransactions] Required.
  /// [rfc4180] Required.
  /// [rowGroupLength] Required.
  /// [serverSideEncryptionKmsKeyId] Required.
  /// [serviceAccessRoleArn] Required.
  /// [timestampColumnName] Required.
  /// [useCsvNoSupValue] Required.
  /// [useTaskStartTimeForFullLoadTimestamp] Required.
  GetEndpointS3Setting({
    required this.addColumnName,
    required this.bucketFolder,
    required this.bucketName,
    required this.cannedAclForObjects,
    required this.cdcInsertsAndUpdates,
    required this.cdcInsertsOnly,
    required this.cdcMaxBatchInterval,
    required this.cdcMinFileSize,
    required this.cdcPath,
    required this.compressionType,
    required this.csvDelimiter,
    required this.csvNoSupValue,
    required this.csvNullValue,
    required this.csvRowDelimiter,
    required this.dataFormat,
    required this.dataPageSize,
    required this.datePartitionDelimiter,
    required this.datePartitionEnabled,
    required this.datePartitionSequence,
    required this.dictPageSizeLimit,
    required this.enableStatistics,
    required this.encodingType,
    required this.encryptionMode,
    required this.externalTableDefinition,
    required this.glueCatalogGeneration,
    required this.ignoreHeaderRows,
    required this.ignoreHeadersRow,
    required this.includeOpForFullLoad,
    required this.maxFileSize,
    required this.parquetTimestampInMillisecond,
    required this.parquetVersion,
    required this.preserveTransactions,
    required this.rfc4180,
    required this.rowGroupLength,
    required this.serverSideEncryptionKmsKeyId,
    required this.serviceAccessRoleArn,
    required this.timestampColumnName,
    required this.useCsvNoSupValue,
    required this.useTaskStartTimeForFullLoadTimestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addColumnName'] = addColumnName;
    map['bucketFolder'] = bucketFolder;
    map['bucketName'] = bucketName;
    map['cannedAclForObjects'] = cannedAclForObjects;
    map['cdcInsertsAndUpdates'] = cdcInsertsAndUpdates;
    map['cdcInsertsOnly'] = cdcInsertsOnly;
    map['cdcMaxBatchInterval'] = cdcMaxBatchInterval;
    map['cdcMinFileSize'] = cdcMinFileSize;
    map['cdcPath'] = cdcPath;
    map['compressionType'] = compressionType;
    map['csvDelimiter'] = csvDelimiter;
    map['csvNoSupValue'] = csvNoSupValue;
    map['csvNullValue'] = csvNullValue;
    map['csvRowDelimiter'] = csvRowDelimiter;
    map['dataFormat'] = dataFormat;
    map['dataPageSize'] = dataPageSize;
    map['datePartitionDelimiter'] = datePartitionDelimiter;
    map['datePartitionEnabled'] = datePartitionEnabled;
    map['datePartitionSequence'] = datePartitionSequence;
    map['dictPageSizeLimit'] = dictPageSizeLimit;
    map['enableStatistics'] = enableStatistics;
    map['encodingType'] = encodingType;
    map['encryptionMode'] = encryptionMode;
    map['externalTableDefinition'] = externalTableDefinition;
    map['glueCatalogGeneration'] = glueCatalogGeneration;
    map['ignoreHeaderRows'] = ignoreHeaderRows;
    map['ignoreHeadersRow'] = ignoreHeadersRow;
    map['includeOpForFullLoad'] = includeOpForFullLoad;
    map['maxFileSize'] = maxFileSize;
    map['parquetTimestampInMillisecond'] = parquetTimestampInMillisecond;
    map['parquetVersion'] = parquetVersion;
    map['preserveTransactions'] = preserveTransactions;
    map['rfc4180'] = rfc4180;
    map['rowGroupLength'] = rowGroupLength;
    map['serverSideEncryptionKmsKeyId'] = serverSideEncryptionKmsKeyId;
    map['serviceAccessRoleArn'] = serviceAccessRoleArn;
    map['timestampColumnName'] = timestampColumnName;
    map['useCsvNoSupValue'] = useCsvNoSupValue;
    map['useTaskStartTimeForFullLoadTimestamp'] =
        useTaskStartTimeForFullLoadTimestamp;
    return map;
  }

  factory GetEndpointS3Setting.fromMap(Map<String, dynamic> map) {
    return GetEndpointS3Setting(
      addColumnName: map['addColumnName'] as bool,
      bucketFolder: map['bucketFolder'] as String,
      bucketName: map['bucketName'] as String,
      cannedAclForObjects: map['cannedAclForObjects'] as String,
      cdcInsertsAndUpdates: map['cdcInsertsAndUpdates'] as bool,
      cdcInsertsOnly: map['cdcInsertsOnly'] as bool,
      cdcMaxBatchInterval: map['cdcMaxBatchInterval'] as int,
      cdcMinFileSize: map['cdcMinFileSize'] as int,
      cdcPath: map['cdcPath'] as String,
      compressionType: map['compressionType'] as String,
      csvDelimiter: map['csvDelimiter'] as String,
      csvNoSupValue: map['csvNoSupValue'] as String,
      csvNullValue: map['csvNullValue'] as String,
      csvRowDelimiter: map['csvRowDelimiter'] as String,
      dataFormat: map['dataFormat'] as String,
      dataPageSize: map['dataPageSize'] as int,
      datePartitionDelimiter: map['datePartitionDelimiter'] as String,
      datePartitionEnabled: map['datePartitionEnabled'] as bool,
      datePartitionSequence: map['datePartitionSequence'] as String,
      dictPageSizeLimit: map['dictPageSizeLimit'] as int,
      enableStatistics: map['enableStatistics'] as bool,
      encodingType: map['encodingType'] as String,
      encryptionMode: map['encryptionMode'] as String,
      externalTableDefinition: map['externalTableDefinition'] as String,
      glueCatalogGeneration: map['glueCatalogGeneration'] as bool,
      ignoreHeaderRows: map['ignoreHeaderRows'] as int,
      ignoreHeadersRow: map['ignoreHeadersRow'] as int,
      includeOpForFullLoad: map['includeOpForFullLoad'] as bool,
      maxFileSize: map['maxFileSize'] as int,
      parquetTimestampInMillisecond:
          map['parquetTimestampInMillisecond'] as bool,
      parquetVersion: map['parquetVersion'] as String,
      preserveTransactions: map['preserveTransactions'] as bool,
      rfc4180: map['rfc4180'] as bool,
      rowGroupLength: map['rowGroupLength'] as int,
      serverSideEncryptionKmsKeyId:
          map['serverSideEncryptionKmsKeyId'] as String,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] as String,
      timestampColumnName: map['timestampColumnName'] as String,
      useCsvNoSupValue: map['useCsvNoSupValue'] as bool,
      useTaskStartTimeForFullLoadTimestamp:
          map['useTaskStartTimeForFullLoadTimestamp'] as bool,
    );
  }
}
