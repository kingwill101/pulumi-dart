// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRateBasedMod.
class GetRateBasedModResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  GetRateBasedModResult({
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetRateBasedModResult.fromMap(Map<String, dynamic> map) {
    return GetRateBasedModResult(
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
