// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig {
  /// File type that Amazon AppFlow gets from your Amazon S3 bucket. Valid values are `CSV` and `JSON`.
  final String? s3InputFileType;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig].
  /// [s3InputFileType] File type that Amazon AppFlow gets from your Amazon S3 bucket. Valid values are `CSV` and `JSON`.
  FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig({
    this.s3InputFileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3InputFileTypeValue = s3InputFileType;
    if (s3InputFileTypeValue != null) {
      map['s3InputFileType'] = s3InputFileTypeValue;
    }
    return map;
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig(
      s3InputFileType: map['s3InputFileType'] == null
          ? null
          : map['s3InputFileType'] as String,
    );
  }
}
