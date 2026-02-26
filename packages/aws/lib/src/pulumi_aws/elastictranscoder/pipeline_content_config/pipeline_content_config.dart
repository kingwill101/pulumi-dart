// ignore_for_file: unused_element, unnecessary_cast

class PipelineContentConfig {
  /// The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.
  final String? bucket;

  /// The Amazon S3 storage class, `Standard` or `ReducedRedundancy`, that you want Elastic Transcoder to assign to the files and playlists that it stores in your Amazon S3 bucket.
  final String? storageClass;

  PipelineContentConfig({
    this.bucket,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    return map;
  }

  factory PipelineContentConfig.fromMap(Map<String, dynamic> map) {
    return PipelineContentConfig(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
    );
  }
}
