// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineThumbnailConfig {
  /// The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.
  final pulumi.Input<String>? bucket;
  /// The Amazon S3 storage class, Standard or ReducedRedundancy, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.
  final pulumi.Input<String>? storageClass;

  /// Creates a new [PipelineThumbnailConfig].
  /// [bucket] The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.
  /// [storageClass] The Amazon S3 storage class, Standard or ReducedRedundancy, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.
  PipelineThumbnailConfig({
    this.bucket,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'storageClass': ?storageClass,
    };
  }

  factory PipelineThumbnailConfig.fromMap(Map<String, dynamic> map) {
    return PipelineThumbnailConfig(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

