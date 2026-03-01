// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRateBasedMod.
class GetRateBasedModResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetRateBasedModResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  GetRateBasedModResult({
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'name': name, 'region': region};
  }

  factory GetRateBasedModResult.fromMap(Map<String, dynamic> map) {
    return GetRateBasedModResult(
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
