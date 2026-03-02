// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineContentConfig {
  /// The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.
  final pulumi.Input<String>? bucket;
  /// The Amazon S3 storage class, `Standard` or `ReducedRedundancy`, that you want Elastic Transcoder to assign to the files and playlists that it stores in your Amazon S3 bucket.
  final pulumi.Input<String>? storageClass;

  /// Creates a new [PipelineContentConfig].
  /// [bucket] The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.
  /// [storageClass] The Amazon S3 storage class, `Standard` or `ReducedRedundancy`, that you want Elastic Transcoder to assign to the files and playlists that it stores in your Amazon S3 bucket.
  PipelineContentConfig({
    this.bucket,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'storageClass': ?storageClass,
    };
  }

  factory PipelineContentConfig.fromMap(Map<String, dynamic> map) {
    return PipelineContentConfig(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      storageClass: map['storageClass'] == null ? null : (map['storageClass'] as String).input(),
    );
  }
}

