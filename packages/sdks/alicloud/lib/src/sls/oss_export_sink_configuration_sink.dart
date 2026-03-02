// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OssExportSinkConfigurationSink {
  /// The OSS bucket.
  final pulumi.Input<String> bucket;
  /// The interval between two data shipping operations. Valid values: 300 to 900. Unit: seconds.
  final pulumi.Input<String> bufferInterval;
  /// The size of the OSS object to which data is shipped. Valid values: 5 to 256. Unit: MB.
  final pulumi.Input<String> bufferSize;
  /// Supports four compression types, such as snappy, gzip, zstd, and none.
  final pulumi.Input<String> compressionType;
  /// The OSS file content details. Note: the value of this parameter should be updated based on the value of the contentType parameter.
  ///
  /// If the contentType value is JSON, the parameters of the contentDetail value are as follows:
  ///
  /// If the tag is allowed to be posted, the value of the parameter enableTag is true. Example:{"enableTag": true}
  ///
  /// You are not allowed to post tags. The value of the parameter enableTag is false. Example:{"enableTag": false}
  ///
  /// If the contentType value is csv, the parameters of the contentDetail value are as follows:
  ///
  /// The parameter columns is the key of the log in the source logstore.
  ///
  /// The delimiter parameter, which can be ",","|","", or "\t".
  ///
  /// The header parameter determines whether the OSS file retains the header. The optional value is true or false.
  ///
  /// The lineFeed parameter. Optional values are "\t", "\n", or "".
  ///
  /// The invalid field content parameter is null to specify the delivery content when the field name does not exist.
  ///
  /// The escape character parameter "quote". Optional values are "" "," '", or" ".
  ///
  /// Example:{"null": "-", "header": false, "lineFeed": "\n", "quote": "", "delimiter": ",", "columns": ["a", "B", "c", "d"]}
  ///
  /// When the contentType value is parquet, the parameters of the contentDetail value are as follows:
  ///
  /// The columns parameter is the key of the log in the source Logstore and must carry the data type of the key, for example:{"columns": [{"name": "a", "type": "string"}, {"name": "B", "type": "string"}, {"name": "c", "type": "string": "string"}]}
  ///
  /// When the contentType value is set to orc, the parameters of the contentDetail value are as follows:
  ///
  /// The columns parameter is the key of the log in the source Logstore and must carry the data type of the key, for example:{"columns": [{"name": "a", "type": "string"}, {"name": "B", "type": "string"}, {"name": "c", "type": "string": "string"}]}
  final pulumi.Input<String> contentDetail;
  /// The storage format of the OSS object. Valid values: json, parquet, csv, and orc.
  final pulumi.Input<String> contentType;
  /// The latency of data shipping. The value of this parameter cannot exceed the data retention period of the source Logstore.
  final pulumi.Input<int>? delaySeconds;
  /// The OSS Endpoint can only be an OSS intranet Endpoint and only supports the same region. Example value: https://oss-cn-hangzhou-internal.aliyuncs.com
  final pulumi.Input<String> endpoint;
  /// The directory is dynamically generated according to the time. The default value is% Y/%m/%d/%H/%M. The corresponding generated directory is, for example, 2017/01/23/12/00. Note that the partition format cannot start and end. Example values:%Y/%m/%d
  final pulumi.Input<String>? pathFormat;
  /// The partition format type. only support time
  final pulumi.Input<String>? pathFormatType;
  /// The prefix of the OSS object.
  final pulumi.Input<String>? prefix;
  /// The ARN of the RAM role that is used to write data to OSS. Example value: acs:ram::xxxxxxx
  final pulumi.Input<String> roleArn;
  /// The suffix of the OSS object.
  final pulumi.Input<String>? suffix;
  /// The time zone. Example value: +0800
  final pulumi.Input<String> timeZone;

  /// Creates a new [OssExportSinkConfigurationSink].
  /// [bucket] The OSS bucket.
  /// [bufferInterval] The interval between two data shipping operations. Valid values: 300 to 900. Unit: seconds.
  /// [bufferSize] The size of the OSS object to which data is shipped. Valid values: 5 to 256. Unit: MB.
  /// [compressionType] Supports four compression types, such as snappy, gzip, zstd, and none.
  /// [contentDetail] The OSS file content details. Note: the value of this parameter should be updated based on the value of the contentType parameter.
  /// [contentType] The storage format of the OSS object. Valid values: json, parquet, csv, and orc.
  /// [delaySeconds] The latency of data shipping. The value of this parameter cannot exceed the data retention period of the source Logstore.
  /// [endpoint] The OSS Endpoint can only be an OSS intranet Endpoint and only supports the same region. Example value: https://oss-cn-hangzhou-internal.aliyuncs.com
  /// [pathFormat] The directory is dynamically generated according to the time. The default value is% Y/%m/%d/%H/%M. The corresponding generated directory is, for example, 2017/01/23/12/00. Note that the partition format cannot start and end. Example values:%Y/%m/%d
  /// [pathFormatType] The partition format type. only support time
  /// [prefix] The prefix of the OSS object.
  /// [roleArn] The ARN of the RAM role that is used to write data to OSS. Example value: acs:ram::xxxxxxx
  /// [suffix] The suffix of the OSS object.
  /// [timeZone] The time zone. Example value: +0800
  OssExportSinkConfigurationSink({
    required this.bucket,
    required this.bufferInterval,
    required this.bufferSize,
    required this.compressionType,
    required this.contentDetail,
    required this.contentType,
    this.delaySeconds,
    required this.endpoint,
    this.pathFormat,
    this.pathFormatType,
    this.prefix,
    required this.roleArn,
    this.suffix,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bufferInterval': bufferInterval,
      'bufferSize': bufferSize,
      'compressionType': compressionType,
      'contentDetail': contentDetail,
      'contentType': contentType,
      'delaySeconds': ?delaySeconds,
      'endpoint': endpoint,
      'pathFormat': ?pathFormat,
      'pathFormatType': ?pathFormatType,
      'prefix': ?prefix,
      'roleArn': roleArn,
      'suffix': ?suffix,
      'timeZone': timeZone,
    };
  }

  factory OssExportSinkConfigurationSink.fromMap(Map<String, dynamic> map) {
    return OssExportSinkConfigurationSink(
      bucket: (map['bucket'] as String).input(),
      bufferInterval: (map['bufferInterval'] as String).input(),
      bufferSize: (map['bufferSize'] as String).input(),
      compressionType: (map['compressionType'] as String).input(),
      contentDetail: (map['contentDetail'] as String).input(),
      contentType: (map['contentType'] as String).input(),
      delaySeconds: map['delaySeconds'] == null ? null : (map['delaySeconds']! as int).input(),
      endpoint: (map['endpoint'] as String).input(),
      pathFormat: map['pathFormat'] == null ? null : (map['pathFormat']! as String).input(),
      pathFormatType: map['pathFormatType'] == null ? null : (map['pathFormatType']! as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix']! as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      suffix: map['suffix'] == null ? null : (map['suffix']! as String).input(),
      timeZone: (map['timeZone'] as String).input(),
    );
  }
}

