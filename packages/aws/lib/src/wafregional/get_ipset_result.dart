// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIpset.
class GetIpsetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetIpsetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  GetIpsetResult({
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

  factory GetIpsetResult.fromMap(Map<String, dynamic> map) {
    return GetIpsetResult(
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
