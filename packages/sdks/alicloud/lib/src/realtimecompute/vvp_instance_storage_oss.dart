// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VvpInstanceStorageOss {
  /// OSS Bucket name.
  final pulumi.Input<String> bucket;

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
      bucket: (map['bucket'] as String).input(),
    );
  }
}

