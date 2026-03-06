// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_export_config_column.dart';

/// Input properties used for looking up and filtering OssExport resources.
class OssExportState {
  /// The name of the oss bucket.
  final pulumi.Input<String>? bucket;
  /// How often is it delivered every interval.
  final pulumi.Input<int>? bufferInterval;
  /// Automatically control the creation interval of delivery tasks and set the upper limit of an OSS object size (calculated in uncompressed), unit: `MB`.
  final pulumi.Input<int>? bufferSize;
  /// OSS data storage compression method, support: `none`, `snappy`, `zstd`, `gzip`. Among them, none means that the original data is not compressed, and snappy means that the data is compressed using the snappy algorithm, which can reduce the storage space usage of the `OSS Bucket`.
  final pulumi.Input<String>? compressType;
  /// Configure columns when `content_type` is `parquet` or `orc`.
  final pulumi.Input<List<OssExportConfigColumn>>? configColumns;
  /// Storage format, only supports three types: `json`, `parquet`, `orc`, `csv`.
  /// **According to the different format, please select the following parameters**
  final pulumi.Input<String>? contentType;
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
  final pulumi.Input<String>? exportName;
  /// The log from when to export to oss.
  final pulumi.Input<int>? fromTime;
  /// Whether to deliver the label when `content_type` = `json`.
  final pulumi.Input<bool>? jsonEnableTag;
  /// Used for logstore reading, the role should have log read policy, such as `acs:ram::13234:role/logrole`, if `log_read_role_arn` is not set, `role_arn` is used to read logstore.
  final pulumi.Input<String>? logReadRoleArn;
  /// The name of the log logstore.
  final pulumi.Input<String>? logstoreName;
  /// The OSS Bucket directory is dynamically generated according to the creation time of the export task, it cannot start with a forward slash `/`, the default value is `%Y/%m/%d/%H/%M`.
  final pulumi.Input<String>? pathFormat;
  /// The data synchronized from Log Service to OSS will be stored in this directory of Bucket.
  final pulumi.Input<String>? prefix;
  /// The name of the log project. It is the only in one Alicloud account.
  final pulumi.Input<String>? projectName;
  /// Used to write to oss bucket, the OSS Bucket owner creates the role mark which has the oss bucket write policy, such as `acs:ram::13234:role/logrole`.
  final pulumi.Input<String>? roleArn;
  /// The suffix for the objects in which the shipped data is stored.
  final pulumi.Input<String>? suffix;
  /// This time zone that is used to format the time, `+0800` e.g.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [OssExportState].
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
  const OssExportState({
    this.bucket,
    this.bufferInterval,
    this.bufferSize,
    this.compressType,
    this.configColumns,
    this.contentType,
    this.csvConfigColumns,
    this.csvConfigDelimiter,
    this.csvConfigEscape,
    this.csvConfigHeader,
    this.csvConfigLinefeed,
    this.csvConfigNull,
    this.csvConfigQuote,
    this.displayName,
    this.exportName,
    this.fromTime,
    this.jsonEnableTag,
    this.logReadRoleArn,
    this.logstoreName,
    this.pathFormat,
    this.prefix,
    this.projectName,
    this.roleArn,
    this.suffix,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'bufferInterval': ?bufferInterval,
      'bufferSize': ?bufferSize,
      'compressType': ?compressType,
      'configColumns': ?pulumi.Input.mapOptionalInputValue<List<OssExportConfigColumn>, List<Map<String, dynamic>>>(configColumns, (value) => pulumi.Input.encodeList<OssExportConfigColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentType': ?contentType,
      'csvConfigColumns': ?csvConfigColumns,
      'csvConfigDelimiter': ?csvConfigDelimiter,
      'csvConfigEscape': ?csvConfigEscape,
      'csvConfigHeader': ?csvConfigHeader,
      'csvConfigLinefeed': ?csvConfigLinefeed,
      'csvConfigNull': ?csvConfigNull,
      'csvConfigQuote': ?csvConfigQuote,
      'displayName': ?displayName,
      'exportName': ?exportName,
      'fromTime': ?fromTime,
      'jsonEnableTag': ?jsonEnableTag,
      'logReadRoleArn': ?logReadRoleArn,
      'logstoreName': ?logstoreName,
      'pathFormat': ?pathFormat,
      'prefix': ?prefix,
      'projectName': ?projectName,
      'roleArn': ?roleArn,
      'suffix': ?suffix,
      'timeZone': ?timeZone,
    };
  }

  factory OssExportState.fromMap(Map<String, dynamic> map) {
    return OssExportState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bufferInterval: (() { final guardedValue = map['bufferInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bufferSize: (() { final guardedValue = map['bufferSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      compressType: (() { final guardedValue = map['compressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configColumns: (() { final guardedValue = map['configColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OssExportConfigColumn>(guardedValue, (value) => OssExportConfigColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvConfigColumns: (() { final guardedValue = map['csvConfigColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      csvConfigDelimiter: (() { final guardedValue = map['csvConfigDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvConfigEscape: (() { final guardedValue = map['csvConfigEscape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvConfigHeader: (() { final guardedValue = map['csvConfigHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      csvConfigLinefeed: (() { final guardedValue = map['csvConfigLinefeed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvConfigNull: (() { final guardedValue = map['csvConfigNull']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvConfigQuote: (() { final guardedValue = map['csvConfigQuote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportName: (() { final guardedValue = map['exportName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromTime: (() { final guardedValue = map['fromTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      jsonEnableTag: (() { final guardedValue = map['jsonEnableTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logReadRoleArn: (() { final guardedValue = map['logReadRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logstoreName: (() { final guardedValue = map['logstoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathFormat: (() { final guardedValue = map['pathFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

