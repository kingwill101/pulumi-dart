// ignore_for_file: unused_element, unnecessary_cast

class PipelineThumbnailConfig {
  /// The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.
  final String? bucket;

  /// The Amazon S3 storage class, Standard or ReducedRedundancy, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.
  final String? storageClass;

  /// Creates a new [PipelineThumbnailConfig].
  /// [bucket] The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.
  /// [storageClass] The Amazon S3 storage class, Standard or ReducedRedundancy, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.
  PipelineThumbnailConfig({
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

  factory PipelineThumbnailConfig.fromMap(Map<String, dynamic> map) {
    return PipelineThumbnailConfig(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
    );
  }
}
