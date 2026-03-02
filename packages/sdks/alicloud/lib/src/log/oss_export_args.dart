// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_export_config_column.dart';

/// {@template pulumi_log_oss_export_oss_export_args_doc}
/// The set of arguments for OssExport.
/// {@endtemplate}
/// {@macro pulumi_log_oss_export_oss_export_args_doc}
class OssExportArgs {
  /// The name of the oss bucket.
  final pulumi.Input<String> bucket;
  /// How often is it delivered every interval.
  final pulumi.Input<int> bufferInterval;
  /// Automatically control the creation interval of delivery tasks and set the upper limit of an OSS object size (calculated in uncompressed), unit: `MB`.
  final pulumi.Input<int> bufferSize;
  /// OSS data storage compression method, support: `none`, `snappy`, `zstd`, `gzip`. Among them, none means that the original data is not compressed, and snappy means that the data is compressed using the snappy algorithm, which can reduce the storage space usage of the `OSS Bucket`.
  final pulumi.Input<String>? compressType;
  /// Configure columns when `content_type` is `parquet` or `orc`.
  final pulumi.Input<List<OssExportConfigColumn>>? configColumns;
  /// Storage format, only supports three types: `json`, `parquet`, `orc`, `csv`.
  /// **According to the different format, please select the following parameters**
  final pulumi.Input<String> contentType;
  /// Field configuration in csv content_type.
  final pulumi.Input<List<String>>? csvConfigColumns;
  /// Separator configuration in csv content_type.
  final pulumi.Input<String>? csvConfigDelimiter;
  /// escape in csv content_type.
  final pulumi.Input<String>? csvConfigEscape;
  /// Indicates whether to write the field name to the CSV file, the default value is `false`.
  final pulumi.Input<bool>? csvConfigHeader;
  /// lineFeed in csv content_type.
  final pulumi.Input<String>? csvConfigLinefeed;
  /// Invalid field content in csv content_type.
  final pulumi.Input<String>? csvConfigNull;
  /// Escape character in csv content_type.
  final pulumi.Input<String>? csvConfigQuote;
  /// The display name for oss export.
  final pulumi.Input<String>? displayName;
  /// Delivery configuration name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  final pulumi.Input<String> exportName;
  /// The log from when to export to oss.
  final pulumi.Input<int>? fromTime;
  /// Whether to deliver the label when `content_type` = `json`.
  final pulumi.Input<bool>? jsonEnableTag;
  /// Used for logstore reading, the role should have log read policy, such as `acs:ram::13234:role/logrole`, if `log_read_role_arn` is not set, `role_arn` is used to read logstore.
  final pulumi.Input<String>? logReadRoleArn;
  /// The name of the log logstore.
  final pulumi.Input<String> logstoreName;
  /// The OSS Bucket directory is dynamically generated according to the creation time of the export task, it cannot start with a forward slash `/`, the default value is `%Y/%m/%d/%H/%M`.
  final pulumi.Input<String> pathFormat;
  /// The data synchronized from Log Service to OSS will be stored in this directory of Bucket.
  final pulumi.Input<String>? prefix;
  /// The name of the log project. It is the only in one Alicloud account.
  final pulumi.Input<String> projectName;
  /// Used to write to oss bucket, the OSS Bucket owner creates the role mark which has the oss bucket write policy, such as `acs:ram::13234:role/logrole`.
  final pulumi.Input<String>? roleArn;
  /// The suffix for the objects in which the shipped data is stored.
  final pulumi.Input<String>? suffix;
  /// This time zone that is used to format the time, `+0800` e.g.
  final pulumi.Input<String> timeZone;

  /// Creates a new [OssExportArgs].
  /// [bucket] The name of the oss bucket.
  /// [bufferInterval] How often is it delivered every interval.
  /// [bufferSize] Automatically control the creation interval of delivery tasks and set the upper limit of an OSS object size (calculated in uncompressed), unit: `MB`.
  /// [compressType] OSS data storage compression method, support: `none`, `snappy`, `zstd`, `gzip`. Among them, none means that the original data is not compressed, and snappy means that the data is compressed using the snappy algorithm, which can reduce the storage space usage of the `OSS Bucket`.
  /// [configColumns] Configure columns when `content_type` is `parquet` or `orc`.
  /// [contentType] Storage format, only supports three types: `json`, `parquet`, `orc`, `csv`.
  /// [csvConfigColumns] Field configuration in csv content_type.
  /// [csvConfigDelimiter] Separator configuration in csv content_type.
  /// [csvConfigEscape] escape in csv content_type.
  /// [csvConfigHeader] Indicates whether to write the field name to the CSV file, the default value is `false`.
  /// [csvConfigLinefeed] lineFeed in csv content_type.
  /// [csvConfigNull] Invalid field content in csv content_type.
  /// [csvConfigQuote] Escape character in csv content_type.
  /// [displayName] The display name for oss export.
  /// [exportName] Delivery configuration name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  /// [fromTime] The log from when to export to oss.
  /// [jsonEnableTag] Whether to deliver the label when `content_type` = `json`.
  /// [logReadRoleArn] Used for logstore reading, the role should have log read policy, such as `acs:ram::13234:role/logrole`, if `log_read_role_arn` is not set, `role_arn` is used to read logstore.
  /// [logstoreName] The name of the log logstore.
  /// [pathFormat] The OSS Bucket directory is dynamically generated according to the creation time of the export task, it cannot start with a forward slash `/`, the default value is `%Y/%m/%d/%H/%M`.
  /// [prefix] The data synchronized from Log Service to OSS will be stored in this directory of Bucket.
  /// [projectName] The name of the log project. It is the only in one Alicloud account.
  /// [roleArn] Used to write to oss bucket, the OSS Bucket owner creates the role mark which has the oss bucket write policy, such as `acs:ram::13234:role/logrole`.
  /// [suffix] The suffix for the objects in which the shipped data is stored.
  /// [timeZone] This time zone that is used to format the time, `+0800` e.g.
  OssExportArgs({
    required this.bucket,
    required this.bufferInterval,
    required this.bufferSize,
    this.compressType,
    this.configColumns,
    required this.contentType,
    this.csvConfigColumns,
    this.csvConfigDelimiter,
    this.csvConfigEscape,
    this.csvConfigHeader,
    this.csvConfigLinefeed,
    this.csvConfigNull,
    this.csvConfigQuote,
    this.displayName,
    required this.exportName,
    this.fromTime,
    this.jsonEnableTag,
    this.logReadRoleArn,
    required this.logstoreName,
    required this.pathFormat,
    this.prefix,
    required this.projectName,
    this.roleArn,
    this.suffix,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bufferInterval': bufferInterval,
      'bufferSize': bufferSize,
      'compressType': ?compressType,
      'configColumns': ?pulumi.Input.mapOptionalInputValue<List<OssExportConfigColumn>, List<Map<String, dynamic>>>(configColumns, (value) => pulumi.Input.encodeList<OssExportConfigColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentType': contentType,
      'csvConfigColumns': ?csvConfigColumns,
      'csvConfigDelimiter': ?csvConfigDelimiter,
      'csvConfigEscape': ?csvConfigEscape,
      'csvConfigHeader': ?csvConfigHeader,
      'csvConfigLinefeed': ?csvConfigLinefeed,
      'csvConfigNull': ?csvConfigNull,
      'csvConfigQuote': ?csvConfigQuote,
      'displayName': ?displayName,
      'exportName': exportName,
      'fromTime': ?fromTime,
      'jsonEnableTag': ?jsonEnableTag,
      'logReadRoleArn': ?logReadRoleArn,
      'logstoreName': logstoreName,
      'pathFormat': pathFormat,
      'prefix': ?prefix,
      'projectName': projectName,
      'roleArn': ?roleArn,
      'suffix': ?suffix,
      'timeZone': timeZone,
    };
  }

  factory OssExportArgs.fromMap(Map<String, dynamic> map) {
    return OssExportArgs(
      bucket: (map['bucket'] as String).input(),
      bufferInterval: (map['bufferInterval'] as int).input(),
      bufferSize: (map['bufferSize'] as int).input(),
      compressType: map['compressType'] == null ? null : (map['compressType']! as String).input(),
      configColumns: map['configColumns'] == null ? null : (pulumi.Input.decodeList<OssExportConfigColumn>(map['configColumns']!, (value) => OssExportConfigColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contentType: (map['contentType'] as String).input(),
      csvConfigColumns: map['csvConfigColumns'] == null ? null : ((map['csvConfigColumns']! as List).cast<String>()).input(),
      csvConfigDelimiter: map['csvConfigDelimiter'] == null ? null : (map['csvConfigDelimiter']! as String).input(),
      csvConfigEscape: map['csvConfigEscape'] == null ? null : (map['csvConfigEscape']! as String).input(),
      csvConfigHeader: map['csvConfigHeader'] == null ? null : (map['csvConfigHeader']! as bool).input(),
      csvConfigLinefeed: map['csvConfigLinefeed'] == null ? null : (map['csvConfigLinefeed']! as String).input(),
      csvConfigNull: map['csvConfigNull'] == null ? null : (map['csvConfigNull']! as String).input(),
      csvConfigQuote: map['csvConfigQuote'] == null ? null : (map['csvConfigQuote']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      exportName: (map['exportName'] as String).input(),
      fromTime: map['fromTime'] == null ? null : (map['fromTime']! as int).input(),
      jsonEnableTag: map['jsonEnableTag'] == null ? null : (map['jsonEnableTag']! as bool).input(),
      logReadRoleArn: map['logReadRoleArn'] == null ? null : (map['logReadRoleArn']! as String).input(),
      logstoreName: (map['logstoreName'] as String).input(),
      pathFormat: (map['pathFormat'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      suffix: map['suffix'] == null ? null : (map['suffix']! as String).input(),
      timeZone: (map['timeZone'] as String).input(),
    );
  }
}

