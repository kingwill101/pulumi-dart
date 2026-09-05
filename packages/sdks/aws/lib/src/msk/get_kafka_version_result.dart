// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKafkaVersion.
class GetKafkaVersionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<String>? preferredVersions;
  final String? region;
  /// Status of the MSK Kafka version eg. `ACTIVE` or `DEPRECATED`.
  final String? status;
  final String? version;

  /// Creates a new [GetKafkaVersionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [preferredVersions] Optional.
  /// [region] Optional.
  /// [status] Status of the MSK Kafka version eg. `ACTIVE` or `DEPRECATED`.
  /// [version] Optional.
  const GetKafkaVersionResult({
    this.id,
    this.preferredVersions,
    this.region,
    this.status,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'preferredVersions': ?preferredVersions,
      'region': ?region,
      'status': ?status,
      'version': ?version,
    };
  }

  factory GetKafkaVersionResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaVersionResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredVersions: (() { final guardedValue = map['preferredVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
