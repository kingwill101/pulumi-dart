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
    required pulumi.Output<int> bufferInterval,
    required pulumi.Output<int> bufferSize,
    pulumi.Output<String>? compressType,
    pulumi.Output<List<String>>? csvConfigColumns,
    pulumi.Output<String>? csvConfigDelimiter,
    pulumi.Output<bool>? csvConfigHeader,
    pulumi.Output<String>? csvConfigLinefeed,
    pulumi.Output<String>? csvConfigNullidentifier,
    pulumi.Output<String>? csvConfigQuote,
    required pulumi.Output<String> format,
    pulumi.Output<bool>? jsonEnableTag,
    required pulumi.Output<String> logstoreName,
    required pulumi.Output<String> ossBucket,
    pulumi.Output<String>? ossPrefix,
    pulumi.Output<List<OssShipperParquetConfig>>? parquetConfigs,
    required pulumi.Output<String> pathFormat,
    required pulumi.Output<String> projectName,
    pulumi.Output<String>? roleArn,
    required pulumi.Output<String> shipperName,
  }) :
      bufferInterval = pulumi.Input.asInput<int>(bufferInterval),
      bufferSize = pulumi.Input.asInput<int>(bufferSize),
      compressType = pulumi.Input.asOptionalInput<String>(compressType),
      csvConfigColumns = pulumi.Input.asOptionalInput<List<String>>(csvConfigColumns),
      csvConfigDelimiter = pulumi.Input.asOptionalInput<String>(csvConfigDelimiter),
      csvConfigHeader = pulumi.Input.asOptionalInput<bool>(csvConfigHeader),
      csvConfigLinefeed = pulumi.Input.asOptionalInput<String>(csvConfigLinefeed),
      csvConfigNullidentifier = pulumi.Input.asOptionalInput<String>(csvConfigNullidentifier),
      csvConfigQuote = pulumi.Input.asOptionalInput<String>(csvConfigQuote),
      format = pulumi.Input.asInput<String>(format),
      jsonEnableTag = pulumi.Input.asOptionalInput<bool>(jsonEnableTag),
      logstoreName = pulumi.Input.asInput<String>(logstoreName),
      ossBucket = pulumi.Input.asInput<String>(ossBucket),
      ossPrefix = pulumi.Input.asOptionalInput<String>(ossPrefix),
      parquetConfigs = pulumi.Input.asOptionalInput<List<OssShipperParquetConfig>>(parquetConfigs),
      pathFormat = pulumi.Input.asInput<String>(pathFormat),
      projectName = pulumi.Input.asInput<String>(projectName),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      shipperName = pulumi.Input.asInput<String>(shipperName);

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
      'parquetConfigs': ?pulumi.Input.mapOptionalInputValue<List<OssShipperParquetConfig>, List<Map<String, dynamic>>>(parquetConfigs, (value) => pulumi.Input.encodeList<OssShipperParquetConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pathFormat': pathFormat,
      'projectName': projectName,
      'roleArn': ?roleArn,
      'shipperName': shipperName,
    };
  }

  factory OssShipperArgs.fromMap(Map<String, dynamic> map) {
    return OssShipperArgs(
      bufferInterval: pulumi.Output.create<int>(map['bufferInterval'] as int),
      bufferSize: pulumi.Output.create<int>(map['bufferSize'] as int),
      compressType: map['compressType'] == null ? null : pulumi.Output.create<String>(map['compressType'] as String),
      csvConfigColumns: map['csvConfigColumns'] == null ? null : pulumi.Output.create<List<String>>((map['csvConfigColumns'] as List).cast<String>()),
      csvConfigDelimiter: map['csvConfigDelimiter'] == null ? null : pulumi.Output.create<String>(map['csvConfigDelimiter'] as String),
      csvConfigHeader: map['csvConfigHeader'] == null ? null : pulumi.Output.create<bool>(map['csvConfigHeader'] as bool),
      csvConfigLinefeed: map['csvConfigLinefeed'] == null ? null : pulumi.Output.create<String>(map['csvConfigLinefeed'] as String),
      csvConfigNullidentifier: map['csvConfigNullidentifier'] == null ? null : pulumi.Output.create<String>(map['csvConfigNullidentifier'] as String),
      csvConfigQuote: map['csvConfigQuote'] == null ? null : pulumi.Output.create<String>(map['csvConfigQuote'] as String),
      format: pulumi.Output.create<String>(map['format'] as String),
      jsonEnableTag: map['jsonEnableTag'] == null ? null : pulumi.Output.create<bool>(map['jsonEnableTag'] as bool),
      logstoreName: pulumi.Output.create<String>(map['logstoreName'] as String),
      ossBucket: pulumi.Output.create<String>(map['ossBucket'] as String),
      ossPrefix: map['ossPrefix'] == null ? null : pulumi.Output.create<String>(map['ossPrefix'] as String),
      parquetConfigs: map['parquetConfigs'] == null ? null : pulumi.Output.create<List<OssShipperParquetConfig>>(pulumi.Input.decodeList<OssShipperParquetConfig>(map['parquetConfigs'], (value) => OssShipperParquetConfig.fromMap((value as Map).cast<String, dynamic>()))),
      pathFormat: pulumi.Output.create<String>(map['pathFormat'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      shipperName: pulumi.Output.create<String>(map['shipperName'] as String),
    );
  }
}

