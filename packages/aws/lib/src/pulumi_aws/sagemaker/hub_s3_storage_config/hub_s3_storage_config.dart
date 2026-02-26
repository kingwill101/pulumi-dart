// ignore_for_file: unused_element, unnecessary_cast

class HubS3StorageConfig {
  /// The Amazon S3 bucket prefix for hosting hub content.interface.
  final String? s3OutputPath;

  HubS3StorageConfig({
    this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3OutputPathValue = s3OutputPath;
    if (s3OutputPathValue != null) {
      map['s3OutputPath'] = s3OutputPathValue;
    }
    return map;
  }

  factory HubS3StorageConfig.fromMap(Map<String, dynamic> map) {
    return HubS3StorageConfig(
      s3OutputPath:
          map['s3OutputPath'] == null ? null : map['s3OutputPath'] as String,
    );
  }
}
