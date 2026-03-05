// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSerialConsoleAccess.
class GetSerialConsoleAccessResult {
  /// Whether or not serial console access is enabled. Returns as `true` or `false`.
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetSerialConsoleAccessResult].
  /// [enabled] Whether or not serial console access is enabled. Returns as `true` or `false`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetSerialConsoleAccessResult({
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

  factory GetSerialConsoleAccessResult.fromMap(Map<String, dynamic> map) {
    return GetSerialConsoleAccessResult(
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

