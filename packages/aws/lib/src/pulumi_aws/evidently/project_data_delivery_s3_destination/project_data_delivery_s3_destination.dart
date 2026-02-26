// ignore_for_file: unused_element, unnecessary_cast

class ProjectDataDeliveryS3Destination {
  /// The name of the bucket in which Evidently stores evaluation events.
  final String? bucket;

  /// The bucket prefix in which Evidently stores evaluation events.
  final String? prefix;

  ProjectDataDeliveryS3Destination({
    this.bucket,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory ProjectDataDeliveryS3Destination.fromMap(Map<String, dynamic> map) {
    return ProjectDataDeliveryS3Destination(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
