// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKafkaVersion.
class GetKafkaVersionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String>? preferredVersions;
  final String region;

  /// Status of the MSK Kafka version eg. `ACTIVE` or `DEPRECATED`.
  final String status;
  final String version;

  GetKafkaVersionResult({
    required this.id,
    this.preferredVersions,
    required this.region,
    required this.status,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final preferredVersionsValue = preferredVersions;
    if (preferredVersionsValue != null) {
      map['preferredVersions'] = preferredVersionsValue;
    }
    map['region'] = region;
    map['status'] = status;
    map['version'] = version;
    return map;
  }

  factory GetKafkaVersionResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaVersionResult(
      id: map['id'] as String,
      preferredVersions: map['preferredVersions'] == null
          ? null
          : (map['preferredVersions'] as List).cast<String>(),
      region: map['region'] as String,
      status: map['status'] as String,
      version: map['version'] as String,
    );
  }
}
