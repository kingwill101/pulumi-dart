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
  const GetEndpointS3Setting({
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
      addColumnName: pulumi.Input.fromValue(map['addColumnName'] as bool),
      bucketFolder: pulumi.Input.fromValue(map['bucketFolder'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      cannedAclForObjects: pulumi.Input.fromValue(map['cannedAclForObjects'] as String),
      cdcInsertsAndUpdates: pulumi.Input.fromValue(map['cdcInsertsAndUpdates'] as bool),
      cdcInsertsOnly: pulumi.Input.fromValue(map['cdcInsertsOnly'] as bool),
      cdcMaxBatchInterval: pulumi.Input.fromValue(map['cdcMaxBatchInterval'] as int),
      cdcMinFileSize: pulumi.Input.fromValue(map['cdcMinFileSize'] as int),
      cdcPath: pulumi.Input.fromValue(map['cdcPath'] as String),
      compressionType: pulumi.Input.fromValue(map['compressionType'] as String),
      csvDelimiter: pulumi.Input.fromValue(map['csvDelimiter'] as String),
      csvNoSupValue: pulumi.Input.fromValue(map['csvNoSupValue'] as String),
      csvNullValue: pulumi.Input.fromValue(map['csvNullValue'] as String),
      csvRowDelimiter: pulumi.Input.fromValue(map['csvRowDelimiter'] as String),
      dataFormat: pulumi.Input.fromValue(map['dataFormat'] as String),
      dataPageSize: pulumi.Input.fromValue(map['dataPageSize'] as int),
      datePartitionDelimiter: pulumi.Input.fromValue(map['datePartitionDelimiter'] as String),
      datePartitionEnabled: pulumi.Input.fromValue(map['datePartitionEnabled'] as bool),
      datePartitionSequence: pulumi.Input.fromValue(map['datePartitionSequence'] as String),
      dictPageSizeLimit: pulumi.Input.fromValue(map['dictPageSizeLimit'] as int),
      enableStatistics: pulumi.Input.fromValue(map['enableStatistics'] as bool),
      encodingType: pulumi.Input.fromValue(map['encodingType'] as String),
      encryptionMode: pulumi.Input.fromValue(map['encryptionMode'] as String),
      externalTableDefinition: pulumi.Input.fromValue(map['externalTableDefinition'] as String),
      glueCatalogGeneration: pulumi.Input.fromValue(map['glueCatalogGeneration'] as bool),
      ignoreHeaderRows: pulumi.Input.fromValue(map['ignoreHeaderRows'] as int),
      ignoreHeadersRow: pulumi.Input.fromValue(map['ignoreHeadersRow'] as int),
      includeOpForFullLoad: pulumi.Input.fromValue(map['includeOpForFullLoad'] as bool),
      maxFileSize: pulumi.Input.fromValue(map['maxFileSize'] as int),
      parquetTimestampInMillisecond: pulumi.Input.fromValue(map['parquetTimestampInMillisecond'] as bool),
      parquetVersion: pulumi.Input.fromValue(map['parquetVersion'] as String),
      preserveTransactions: pulumi.Input.fromValue(map['preserveTransactions'] as bool),
      rfc4180: pulumi.Input.fromValue(map['rfc4180'] as bool),
      rowGroupLength: pulumi.Input.fromValue(map['rowGroupLength'] as int),
      serverSideEncryptionKmsKeyId: pulumi.Input.fromValue(map['serverSideEncryptionKmsKeyId'] as String),
      serviceAccessRoleArn: pulumi.Input.fromValue(map['serviceAccessRoleArn'] as String),
      timestampColumnName: pulumi.Input.fromValue(map['timestampColumnName'] as String),
      useCsvNoSupValue: pulumi.Input.fromValue(map['useCsvNoSupValue'] as bool),
      useTaskStartTimeForFullLoadTimestamp: pulumi.Input.fromValue(map['useTaskStartTimeForFullLoadTimestamp'] as bool),
    );
  }
}
