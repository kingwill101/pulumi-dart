// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEncryptionByDefault.
class GetEncryptionByDefaultResult {
  /// Whether or not default EBS encryption is enabled. Returns as `true` or `false`.
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetEncryptionByDefaultResult].
  /// [enabled] Whether or not default EBS encryption is enabled. Returns as `true` or `false`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  const GetEncryptionByDefaultResult({
    required this.enabled,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
      'region': region,
    };
  }

  factory GetEncryptionByDefaultResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptionByDefaultResult(
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

