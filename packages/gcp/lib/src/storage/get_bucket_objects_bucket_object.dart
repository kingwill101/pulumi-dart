// ignore_for_file: unused_element, unnecessary_cast

class GetBucketObjectsBucketObject {
  /// [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data.
  final String contentType;

  /// A url reference to download this object.
  final String mediaLink;

  /// The name of the object.
  final String name;

  /// A url reference to this object.
  final String selfLink;

  /// The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the bucket object.
  final String storageClass;

  /// Creates a new [GetBucketObjectsBucketObject].
  /// [contentType] [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data.
  /// [mediaLink] A url reference to download this object.
  /// [name] The name of the object.
  /// [selfLink] A url reference to this object.
  /// [storageClass] The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the bucket object.
  GetBucketObjectsBucketObject({
    required this.contentType,
    required this.mediaLink,
    required this.name,
    required this.selfLink,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'mediaLink': mediaLink,
      'name': name,
      'selfLink': selfLink,
      'storageClass': storageClass,
    };
  }

  factory GetBucketObjectsBucketObject.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsBucketObject(
      contentType: map['contentType'] as String,
      mediaLink: map['mediaLink'] as String,
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}
