// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_shipper_parquet_config.dart';

/// {@template pulumi_log_oss_shipper_oss_shipper_args_doc}
/// The set of arguments for OssShipper.
/// {@endtemplate}
/// {@macro pulumi_log_oss_shipper_oss_shipper_args_doc}
class OssShipperArgs {
  /// How often is it delivered every interval.
  final pulumi.Input<int> bufferInterval;

  /// Automatically control the creation interval of delivery tasks and set the upper limit of an OSS object size (calculated in uncompressed), unit: `MB`.
  final pulumi.Input<int> bufferSize;

  /// OSS data storage compression method, support: none, snappy. Among them, none means that the original data is not compressed, and snappy means that the data is compressed using the snappy algorithm, which can reduce the storage space usage of the `OSS Bucket`.
  final pulumi.Input<String>? compressType;
  final pulumi.Input<List<String>>? csvConfigColumns;
  final pulumi.Input<String>? csvConfigDelimiter;
  final pulumi.Input<bool>? csvConfigHeader;
  final pulumi.Input<String>? csvConfigLinefeed;
  final pulumi.Input<String>? csvConfigNullidentifier;
  final pulumi.Input<String>? csvConfigQuote;

  /// Storage format, only supports three types: `json`, `parquet`, `csv`.
  /// **According to the different format, please select the following parameters**
  /// - format = `json`
  /// `json_enable_tag` - (Optional) Whether to deliver the label.
  /// - format = `csv`
  /// `csv_config_delimiter` - (Optional) Separator configuration in csv configuration format.
  /// `csv_config_columns` - (Optional) Field configuration in csv configuration format.
  /// `csv_config_nullidentifier` - (Optional) Invalid field content.
  /// `csv_config_quote` - (Optional) Escape character under csv configuration.
  /// `csv_config_header` - (Optional) Indicates whether to write the field name to the CSV file, the default value is `false`.
  /// `csv_config_linefeed` - (Optional) lineFeed in csv configuration.
  /// - format = `parquet`
  /// `parquet_config` - (Optional) Configure to use parquet storage format.
  /// `name` - (Required) The name of the key.
  /// `type` - (Required) Type of configuration name.
  final pulumi.Input<String> format;
  final pulumi.Input<bool>? jsonEnableTag;

  /// The name of the log logstore.
  final pulumi.Input<String> logstoreName;

  /// The name of the oss bucket.
  final pulumi.Input<String> ossBucket;

  /// The data synchronized from Log Service to OSS will be stored in this directory of Bucket.
  final pulumi.Input<String>? ossPrefix;
  final pulumi.Input<List<OssShipperParquetConfig>>? parquetConfigs;

  /// The OSS Bucket directory is dynamically generated according to the creation time of the shipper task, it cannot start with a forward slash `/`, the default value is `%Y/%m/%d/%H/%M`.
  final pulumi.Input<String> pathFormat;

  /// The name of the log project. It is the only in one Alicloud account.
  final pulumi.Input<String> projectName;

  /// Used for access control, the OSS Bucket owner creates the role mark, such as `acs:ram::13234:role/logrole`
  final pulumi.Input<String>? roleArn;

  /// Delivery configuration name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  final pulumi.Input<String> shipperName;

  /// Creates a new [OssShipperArgs].
  /// [bufferInterval] How often is it delivered every interval.
  /// [bufferSize] Automatically control the creation interval of delivery tasks and set the upper limit of an OSS object size (calculated in uncompressed), unit: `MB`.
  /// [compressType] OSS data storage compression method, support: none, snappy. Among them, none means that the original data is not compressed, and snappy means that the data is compressed using the snappy algorithm, which can reduce the storage space usage of the `OSS Bucket`.
  /// [csvConfigColumns] Optional.
  /// [csvConfigDelimiter] Optional.
  /// [csvConfigHeader] Optional.
  /// [csvConfigLinefeed] Optional.
  /// [csvConfigNullidentifier] Optional.
  /// [csvConfigQuote] Optional.
  /// [format] Storage format, only supports three types: `json`, `parquet`, `csv`.
  /// [jsonEnableTag] Optional.
  /// [logstoreName] The name of the log logstore.
  /// [ossBucket] The name of the oss bucket.
  /// [ossPrefix] The data synchronized from Log Service to OSS will be stored in this directory of Bucket.
  /// [parquetConfigs] Optional.
  /// [pathFormat] The OSS Bucket directory is dynamically generated according to the creation time of the shipper task, it cannot start with a forward slash `/`, the default value is `%Y/%m/%d/%H/%M`.
  /// [projectName] The name of the log project. It is the only in one Alicloud account.
  /// [roleArn] Used for access control, the OSS Bucket owner creates the role mark, such as `acs:ram::13234:role/logrole`
  /// [shipperName] Delivery configuration name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  OssShipperArgs({
    required this.bufferInterval,
    required this.bufferSize,
    this.compressType,
    this.csvConfigColumns,
    this.csvConfigDelimiter,
    this.csvConfigHeader,
    this.csvConfigLinefeed,
    this.csvConfigNullidentifier,
    this.csvConfigQuote,
    required this.format,
    this.jsonEnableTag,
    required this.logstoreName,
    required this.ossBucket,
    this.ossPrefix,
    this.parquetConfigs,
    required this.pathFormat,
    required this.projectName,
    this.roleArn,
    required this.shipperName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferInterval': bufferInterval,
      'bufferSize': bufferSize,
      'compressType': ?compressType,
      'csvConfigColumns': ?csvConfigColumns,
      'csvConfigDelimiter': ?csvConfigDelimiter,
      'csvConfigHeader': ?csvConfigHeader,
      'csvConfigLinefeed': ?csvConfigLinefeed,
      'csvConfigNullidentifier': ?csvConfigNullidentifier,
      'csvConfigQuote': ?csvConfigQuote,
      'format': format,
      'jsonEnableTag': ?jsonEnableTag,
      'logstoreName': logstoreName,
      'ossBucket': ossBucket,
      'ossPrefix': ?ossPrefix,
      'parquetConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<OssShipperParquetConfig>,
            List<Map<String, dynamic>>
          >(
            parquetConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  OssShipperParquetConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pathFormat': pathFormat,
      'projectName': projectName,
      'roleArn': ?roleArn,
      'shipperName': shipperName,
    };
  }

  factory OssShipperArgs.fromMap(Map<String, dynamic> map) {
    return OssShipperArgs(
      bufferInterval: pulumi.Input.fromValue(map['bufferInterval'] as int),
      bufferSize: pulumi.Input.fromValue(map['bufferSize'] as int),
      compressType: (() {
        final guardedValue = map['compressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      csvConfigColumns: (() {
        final guardedValue = map['csvConfigColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      csvConfigDelimiter: (() {
        final guardedValue = map['csvConfigDelimiter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      csvConfigHeader: (() {
        final guardedValue = map['csvConfigHeader'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      csvConfigLinefeed: (() {
        final guardedValue = map['csvConfigLinefeed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      csvConfigNullidentifier: (() {
        final guardedValue = map['csvConfigNullidentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      csvConfigQuote: (() {
        final guardedValue = map['csvConfigQuote'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      jsonEnableTag: (() {
        final guardedValue = map['jsonEnableTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logstoreName: pulumi.Input.fromValue(map['logstoreName'] as String),
      ossBucket: pulumi.Input.fromValue(map['ossBucket'] as String),
      ossPrefix: (() {
        final guardedValue = map['ossPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parquetConfigs: (() {
        final guardedValue = map['parquetConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OssShipperParquetConfig>(
            guardedValue,
            (value) => OssShipperParquetConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      pathFormat: pulumi.Input.fromValue(map['pathFormat'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shipperName: pulumi.Input.fromValue(map['shipperName'] as String),
    );
  }
}
