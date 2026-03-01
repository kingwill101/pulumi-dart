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
    required pulumi.Output<String> bucket,
    required pulumi.Output<int> bufferInterval,
    required pulumi.Output<int> bufferSize,
    pulumi.Output<String>? compressType,
    pulumi.Output<List<OssExportConfigColumn>>? configColumns,
    required pulumi.Output<String> contentType,
    pulumi.Output<List<String>>? csvConfigColumns,
    pulumi.Output<String>? csvConfigDelimiter,
    pulumi.Output<String>? csvConfigEscape,
    pulumi.Output<bool>? csvConfigHeader,
    pulumi.Output<String>? csvConfigLinefeed,
    pulumi.Output<String>? csvConfigNull,
    pulumi.Output<String>? csvConfigQuote,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> exportName,
    pulumi.Output<int>? fromTime,
    pulumi.Output<bool>? jsonEnableTag,
    pulumi.Output<String>? logReadRoleArn,
    required pulumi.Output<String> logstoreName,
    required pulumi.Output<String> pathFormat,
    pulumi.Output<String>? prefix,
    required pulumi.Output<String> projectName,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? suffix,
    required pulumi.Output<String> timeZone,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      bufferInterval = pulumi.Input.asInput<int>(bufferInterval),
      bufferSize = pulumi.Input.asInput<int>(bufferSize),
      compressType = pulumi.Input.asOptionalInput<String>(compressType),
      configColumns = pulumi.Input.asOptionalInput<List<OssExportConfigColumn>>(configColumns),
      contentType = pulumi.Input.asInput<String>(contentType),
      csvConfigColumns = pulumi.Input.asOptionalInput<List<String>>(csvConfigColumns),
      csvConfigDelimiter = pulumi.Input.asOptionalInput<String>(csvConfigDelimiter),
      csvConfigEscape = pulumi.Input.asOptionalInput<String>(csvConfigEscape),
      csvConfigHeader = pulumi.Input.asOptionalInput<bool>(csvConfigHeader),
      csvConfigLinefeed = pulumi.Input.asOptionalInput<String>(csvConfigLinefeed),
      csvConfigNull = pulumi.Input.asOptionalInput<String>(csvConfigNull),
      csvConfigQuote = pulumi.Input.asOptionalInput<String>(csvConfigQuote),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      exportName = pulumi.Input.asInput<String>(exportName),
      fromTime = pulumi.Input.asOptionalInput<int>(fromTime),
      jsonEnableTag = pulumi.Input.asOptionalInput<bool>(jsonEnableTag),
      logReadRoleArn = pulumi.Input.asOptionalInput<String>(logReadRoleArn),
      logstoreName = pulumi.Input.asInput<String>(logstoreName),
      pathFormat = pulumi.Input.asInput<String>(pathFormat),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      projectName = pulumi.Input.asInput<String>(projectName),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      suffix = pulumi.Input.asOptionalInput<String>(suffix),
      timeZone = pulumi.Input.asInput<String>(timeZone);

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
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      bufferInterval: pulumi.Output.create<int>(map['bufferInterval'] as int),
      bufferSize: pulumi.Output.create<int>(map['bufferSize'] as int),
      compressType: map['compressType'] == null ? null : pulumi.Output.create<String>(map['compressType'] as String),
      configColumns: map['configColumns'] == null ? null : pulumi.Output.create<List<OssExportConfigColumn>>(pulumi.Input.decodeList<OssExportConfigColumn>(map['configColumns'], (value) => OssExportConfigColumn.fromMap((value as Map).cast<String, dynamic>()))),
      contentType: pulumi.Output.create<String>(map['contentType'] as String),
      csvConfigColumns: map['csvConfigColumns'] == null ? null : pulumi.Output.create<List<String>>((map['csvConfigColumns'] as List).cast<String>()),
      csvConfigDelimiter: map['csvConfigDelimiter'] == null ? null : pulumi.Output.create<String>(map['csvConfigDelimiter'] as String),
      csvConfigEscape: map['csvConfigEscape'] == null ? null : pulumi.Output.create<String>(map['csvConfigEscape'] as String),
      csvConfigHeader: map['csvConfigHeader'] == null ? null : pulumi.Output.create<bool>(map['csvConfigHeader'] as bool),
      csvConfigLinefeed: map['csvConfigLinefeed'] == null ? null : pulumi.Output.create<String>(map['csvConfigLinefeed'] as String),
      csvConfigNull: map['csvConfigNull'] == null ? null : pulumi.Output.create<String>(map['csvConfigNull'] as String),
      csvConfigQuote: map['csvConfigQuote'] == null ? null : pulumi.Output.create<String>(map['csvConfigQuote'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      exportName: pulumi.Output.create<String>(map['exportName'] as String),
      fromTime: map['fromTime'] == null ? null : pulumi.Output.create<int>(map['fromTime'] as int),
      jsonEnableTag: map['jsonEnableTag'] == null ? null : pulumi.Output.create<bool>(map['jsonEnableTag'] as bool),
      logReadRoleArn: map['logReadRoleArn'] == null ? null : pulumi.Output.create<String>(map['logReadRoleArn'] as String),
      logstoreName: pulumi.Output.create<String>(map['logstoreName'] as String),
      pathFormat: pulumi.Output.create<String>(map['pathFormat'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      suffix: map['suffix'] == null ? null : pulumi.Output.create<String>(map['suffix'] as String),
      timeZone: pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

