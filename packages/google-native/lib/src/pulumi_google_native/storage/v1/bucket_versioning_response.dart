// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's versioning configuration.
class BucketVersioningResponse {
  /// While set to true, versioning is fully enabled for this bucket.
  final bool enabled;

  BucketVersioningResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory BucketVersioningResponse.fromMap(Map<String, dynamic> map) {
    return BucketVersioningResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
