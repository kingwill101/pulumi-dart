// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_shipper_parquet_config.dart';

/// Input properties used for looking up and filtering OssShipper resources.
class OssShipperState {
  /// How often is it delivered every interval.
  final pulumi.Input<int>? bufferInterval;
  /// Automatically control the creation interval of delivery tasks and set the upper limit of an OSS object size (calculated in uncompressed), unit: `MB`.
  final pulumi.Input<int>? bufferSize;
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
  final pulumi.Input<String>? format;
  final pulumi.Input<bool>? jsonEnableTag;
  /// The name of the log logstore.
  final pulumi.Input<String>? logstoreName;
  /// The name of the oss bucket.
  final pulumi.Input<String>? ossBucket;
  /// The data synchronized from Log Service to OSS will be stored in this directory of Bucket.
  final pulumi.Input<String>? ossPrefix;
  final pulumi.Input<List<OssShipperParquetConfig>>? parquetConfigs;
  /// The OSS Bucket directory is dynamically generated according to the creation time of the shipper task, it cannot start with a forward slash `/`, the default value is `%Y/%m/%d/%H/%M`.
  final pulumi.Input<String>? pathFormat;
  /// The name of the log project. It is the only in one Alicloud account.
  final pulumi.Input<String>? projectName;
  /// Used for access control, the OSS Bucket owner creates the role mark, such as `acs:ram::13234:role/logrole`
  final pulumi.Input<String>? roleArn;
  /// Delivery configuration name, it can only contain lowercase letters, numbers, dashes `-` and underscores `_`. It must start and end with lowercase letters or numbers, and the name must be 2 to 128 characters long.
  final pulumi.Input<String>? shipperName;

  /// Creates a new [OssShipperState].
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
  OssShipperState({
    this.bufferInterval,
    this.bufferSize,
    this.compressType,
    this.csvConfigColumns,
    this.csvConfigDelimiter,
    this.csvConfigHeader,
    this.csvConfigLinefeed,
    this.csvConfigNullidentifier,
    this.csvConfigQuote,
    this.format,
    this.jsonEnableTag,
    this.logstoreName,
    this.ossBucket,
    this.ossPrefix,
    this.parquetConfigs,
    this.pathFormat,
    this.projectName,
    this.roleArn,
    this.shipperName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferInterval': ?bufferInterval,
      'bufferSize': ?bufferSize,
      'compressType': ?compressType,
      'csvConfigColumns': ?csvConfigColumns,
      'csvConfigDelimiter': ?csvConfigDelimiter,
      'csvConfigHeader': ?csvConfigHeader,
      'csvConfigLinefeed': ?csvConfigLinefeed,
      'csvConfigNullidentifier': ?csvConfigNullidentifier,
      'csvConfigQuote': ?csvConfigQuote,
      'format': ?format,
      'jsonEnableTag': ?jsonEnableTag,
      'logstoreName': ?logstoreName,
      'ossBucket': ?ossBucket,
      'ossPrefix': ?ossPrefix,
      'parquetConfigs': ?pulumi.Input.mapOptionalInputValue<List<OssShipperParquetConfig>, List<Map<String, dynamic>>>(parquetConfigs, (value) => pulumi.Input.encodeList<OssShipperParquetConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pathFormat': ?pathFormat,
      'projectName': ?projectName,
      'roleArn': ?roleArn,
      'shipperName': ?shipperName,
    };
  }

  factory OssShipperState.fromMap(Map<String, dynamic> map) {
    return OssShipperState(
      bufferInterval: map['bufferInterval'] == null ? null : (map['bufferInterval']! as int).input(),
      bufferSize: map['bufferSize'] == null ? null : (map['bufferSize']! as int).input(),
      compressType: map['compressType'] == null ? null : (map['compressType']! as String).input(),
      csvConfigColumns: map['csvConfigColumns'] == null ? null : ((map['csvConfigColumns']! as List).cast<String>()).input(),
      csvConfigDelimiter: map['csvConfigDelimiter'] == null ? null : (map['csvConfigDelimiter']! as String).input(),
      csvConfigHeader: map['csvConfigHeader'] == null ? null : (map['csvConfigHeader']! as bool).input(),
      csvConfigLinefeed: map['csvConfigLinefeed'] == null ? null : (map['csvConfigLinefeed']! as String).input(),
      csvConfigNullidentifier: map['csvConfigNullidentifier'] == null ? null : (map['csvConfigNullidentifier']! as String).input(),
      csvConfigQuote: map['csvConfigQuote'] == null ? null : (map['csvConfigQuote']! as String).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      jsonEnableTag: map['jsonEnableTag'] == null ? null : (map['jsonEnableTag']! as bool).input(),
      logstoreName: map['logstoreName'] == null ? null : (map['logstoreName']! as String).input(),
      ossBucket: map['ossBucket'] == null ? null : (map['ossBucket']! as String).input(),
      ossPrefix: map['ossPrefix'] == null ? null : (map['ossPrefix']! as String).input(),
      parquetConfigs: map['parquetConfigs'] == null ? null : (pulumi.Input.decodeList<OssShipperParquetConfig>(map['parquetConfigs']!, (value) => OssShipperParquetConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pathFormat: map['pathFormat'] == null ? null : (map['pathFormat']! as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      shipperName: map['shipperName'] == null ? null : (map['shipperName']! as String).input(),
    );
  }
}

