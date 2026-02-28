// ignore_for_file: unused_element, unnecessary_cast

class GetBucketsBucket {
  /// User-provided bucket labels, in key/value pairs.
  final Map<String, String> labels;

  /// The location of the bucket.
  final String location;

  /// The name of the bucket.
  final String name;

  /// A url reference to the bucket.
  final String selfLink;

  /// The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the bucket.
  final String storageClass;

  /// Creates a new [GetBucketsBucket].
  /// [labels] User-provided bucket labels, in key/value pairs.
  /// [location] The location of the bucket.
  /// [name] The name of the bucket.
  /// [selfLink] A url reference to the bucket.
  /// [storageClass] The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the bucket.
  GetBucketsBucket({
    required this.labels,
    required this.location,
    required this.name,
    required this.selfLink,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    map['selfLink'] = selfLink;
    map['storageClass'] = storageClass;
    return map;
  }

  factory GetBucketsBucket.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucket(
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}
