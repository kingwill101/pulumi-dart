// ignore_for_file: unused_element, unnecessary_cast


class VvpInstanceStorageOss {
  /// OSS Bucket name.
  final String bucket;

  /// Creates a new [VvpInstanceStorageOss].
  /// [bucket] OSS Bucket name.
  VvpInstanceStorageOss({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
    };
  }

  factory VvpInstanceStorageOss.fromMap(Map<String, dynamic> map) {
    return VvpInstanceStorageOss(
      bucket: map['bucket'] as String,
    );
  }
}

