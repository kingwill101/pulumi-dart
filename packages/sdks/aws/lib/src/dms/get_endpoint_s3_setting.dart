// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointS3Setting {
  final pulumi.Input<bool> addColumnName;
  final pulumi.Input<String> bucketFolder;
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String> cannedAclForObjects;
  final pulumi.Input<bool> cdcInsertsAndUpdates;
  final pulumi.Input<bool> cdcInsertsOnly;
  final pulumi.Input<int> cdcMaxBatchInterval;
  final pulumi.Input<int> cdcMinFileSize;
  final pulumi.Input<String> cdcPath;
  final pulumi.Input<String> compressionType;
  final pulumi.Input<String> csvDelimiter;
  final pulumi.Input<String> csvNoSupValue;
  final pulumi.Input<String> csvNullValue;
  final pulumi.Input<String> csvRowDelimiter;
  final pulumi.Input<String> dataFormat;
  final pulumi.Input<int> dataPageSize;
  final pulumi.Input<String> datePartitionDelimiter;
  final pulumi.Input<bool> datePartitionEnabled;
  final pulumi.Input<String> datePartitionSequence;
  final pulumi.Input<int> dictPageSizeLimit;
  final pulumi.Input<bool> enableStatistics;
  final pulumi.Input<String> encodingType;
  final pulumi.Input<String> encryptionMode;
  final pulumi.Input<String> externalTableDefinition;
  final pulumi.Input<bool> glueCatalogGeneration;
  final pulumi.Input<int> ignoreHeaderRows;
  final pulumi.Input<int> ignoreHeadersRow;
  final pulumi.Input<bool> includeOpForFullLoad;
  final pulumi.Input<int> maxFileSize;
  final pulumi.Input<bool> parquetTimestampInMillisecond;
  final pulumi.Input<String> parquetVersion;
  final pulumi.Input<bool> preserveTransactions;
  final pulumi.Input<bool> rfc4180;
  final pulumi.Input<int> rowGroupLength;
  final pulumi.Input<String> serverSideEncryptionKmsKeyId;
  final pulumi.Input<String> serviceAccessRoleArn;
  final pulumi.Input<String> timestampColumnName;
  final pulumi.Input<bool> useCsvNoSupValue;
  final pulumi.Input<bool> useTaskStartTimeForFullLoadTimestamp;

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
    return <String, dynamic>{
      'addColumnName': addColumnName,
      'bucketFolder': bucketFolder,
      'bucketName': bucketName,
      'cannedAclForObjects': cannedAclForObjects,
      'cdcInsertsAndUpdates': cdcInsertsAndUpdates,
      'cdcInsertsOnly': cdcInsertsOnly,
      'cdcMaxBatchInterval': cdcMaxBatchInterval,
      'cdcMinFileSize': cdcMinFileSize,
      'cdcPath': cdcPath,
      'compressionType': compressionType,
      'csvDelimiter': csvDelimiter,
      'csvNoSupValue': csvNoSupValue,
      'csvNullValue': csvNullValue,
      'csvRowDelimiter': csvRowDelimiter,
      'dataFormat': dataFormat,
      'dataPageSize': dataPageSize,
      'datePartitionDelimiter': datePartitionDelimiter,
      'datePartitionEnabled': datePartitionEnabled,
      'datePartitionSequence': datePartitionSequence,
      'dictPageSizeLimit': dictPageSizeLimit,
      'enableStatistics': enableStatistics,
      'encodingType': encodingType,
      'encryptionMode': encryptionMode,
      'externalTableDefinition': externalTableDefinition,
      'glueCatalogGeneration': glueCatalogGeneration,
      'ignoreHeaderRows': ignoreHeaderRows,
      'ignoreHeadersRow': ignoreHeadersRow,
      'includeOpForFullLoad': includeOpForFullLoad,
      'maxFileSize': maxFileSize,
      'parquetTimestampInMillisecond': parquetTimestampInMillisecond,
      'parquetVersion': parquetVersion,
      'preserveTransactions': preserveTransactions,
      'rfc4180': rfc4180,
      'rowGroupLength': rowGroupLength,
      'serverSideEncryptionKmsKeyId': serverSideEncryptionKmsKeyId,
      'serviceAccessRoleArn': serviceAccessRoleArn,
      'timestampColumnName': timestampColumnName,
      'useCsvNoSupValue': useCsvNoSupValue,
      'useTaskStartTimeForFullLoadTimestamp': useTaskStartTimeForFullLoadTimestamp,
    };
  }

  factory GetEndpointS3Setting.fromMap(Map<String, dynamic> map) {
    return GetEndpointS3Setting(
      addColumnName: (map['addColumnName'] as bool).input(),
      bucketFolder: (map['bucketFolder'] as String).input(),
      bucketName: (map['bucketName'] as String).input(),
      cannedAclForObjects: (map['cannedAclForObjects'] as String).input(),
      cdcInsertsAndUpdates: (map['cdcInsertsAndUpdates'] as bool).input(),
      cdcInsertsOnly: (map['cdcInsertsOnly'] as bool).input(),
      cdcMaxBatchInterval: (map['cdcMaxBatchInterval'] as int).input(),
      cdcMinFileSize: (map['cdcMinFileSize'] as int).input(),
      cdcPath: (map['cdcPath'] as String).input(),
      compressionType: (map['compressionType'] as String).input(),
      csvDelimiter: (map['csvDelimiter'] as String).input(),
      csvNoSupValue: (map['csvNoSupValue'] as String).input(),
      csvNullValue: (map['csvNullValue'] as String).input(),
      csvRowDelimiter: (map['csvRowDelimiter'] as String).input(),
      dataFormat: (map['dataFormat'] as String).input(),
      dataPageSize: (map['dataPageSize'] as int).input(),
      datePartitionDelimiter: (map['datePartitionDelimiter'] as String).input(),
      datePartitionEnabled: (map['datePartitionEnabled'] as bool).input(),
      datePartitionSequence: (map['datePartitionSequence'] as String).input(),
      dictPageSizeLimit: (map['dictPageSizeLimit'] as int).input(),
      enableStatistics: (map['enableStatistics'] as bool).input(),
      encodingType: (map['encodingType'] as String).input(),
      encryptionMode: (map['encryptionMode'] as String).input(),
      externalTableDefinition: (map['externalTableDefinition'] as String).input(),
      glueCatalogGeneration: (map['glueCatalogGeneration'] as bool).input(),
      ignoreHeaderRows: (map['ignoreHeaderRows'] as int).input(),
      ignoreHeadersRow: (map['ignoreHeadersRow'] as int).input(),
      includeOpForFullLoad: (map['includeOpForFullLoad'] as bool).input(),
      maxFileSize: (map['maxFileSize'] as int).input(),
      parquetTimestampInMillisecond: (map['parquetTimestampInMillisecond'] as bool).input(),
      parquetVersion: (map['parquetVersion'] as String).input(),
      preserveTransactions: (map['preserveTransactions'] as bool).input(),
      rfc4180: (map['rfc4180'] as bool).input(),
      rowGroupLength: (map['rowGroupLength'] as int).input(),
      serverSideEncryptionKmsKeyId: (map['serverSideEncryptionKmsKeyId'] as String).input(),
      serviceAccessRoleArn: (map['serviceAccessRoleArn'] as String).input(),
      timestampColumnName: (map['timestampColumnName'] as String).input(),
      useCsvNoSupValue: (map['useCsvNoSupValue'] as bool).input(),
      useTaskStartTimeForFullLoadTimestamp: (map['useTaskStartTimeForFullLoadTimestamp'] as bool).input(),
    );
  }
}

