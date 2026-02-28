// ignore_for_file: unused_element, unnecessary_cast

class StreamProcessorOutputS3Destination {
  /// Name of the Amazon S3 bucket you want to associate with the streaming video project.
  final String? bucket;

  /// The prefix value of the location within the bucket that you want the information to be published to.
  final String? keyPrefix;

  /// Creates a new [StreamProcessorOutputS3Destination].
  /// [bucket] Name of the Amazon S3 bucket you want to associate with the streaming video project.
  /// [keyPrefix] The prefix value of the location within the bucket that you want the information to be published to.
  StreamProcessorOutputS3Destination({
    this.bucket,
    this.keyPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final keyPrefixValue = keyPrefix;
    if (keyPrefixValue != null) {
      map['keyPrefix'] = keyPrefixValue;
    }
    return map;
  }

  factory StreamProcessorOutputS3Destination.fromMap(Map<String, dynamic> map) {
    return StreamProcessorOutputS3Destination(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
    );
  }
}
