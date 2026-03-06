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

  /// Creates a new [GetKafkaVersionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [preferredVersions] Optional.
  /// [region] Required.
  /// [status] Status of the MSK Kafka version eg. `ACTIVE` or `DEPRECATED`.
  /// [version] Required.
  const GetKafkaVersionResult({
    required this.id,
    this.preferredVersions,
    required this.region,
    required this.status,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'preferredVersions': ?preferredVersions,
      'region': region,
      'status': status,
      'version': version,
    };
  }

  factory GetKafkaVersionResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaVersionResult(
      id: map['id'] as String,
      preferredVersions: (() { final guardedValue = map['preferredVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: map['region'] as String,
      status: map['status'] as String,
      version: map['version'] as String,
    );
  }
}

