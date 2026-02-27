// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEncryptionByDefault.
class GetEncryptionByDefaultResult {
  /// Whether or not default EBS encryption is enabled. Returns as `true` or `false`.
  final bool enabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetEncryptionByDefaultResult({
    required this.enabled,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetEncryptionByDefaultResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptionByDefaultResult(
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
