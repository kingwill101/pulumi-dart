// ignore_for_file: unused_element, unnecessary_cast


/// Compute information of a server.
class SkuResponse {
  /// Name by which is known a given compute size assigned to a server.
  final String name;
  /// Tier of the compute assigned to a server.
  final String tier;

  /// Creates a new [SkuResponse].
  /// [name] Name by which is known a given compute size assigned to a server.
  /// [tier] Tier of the compute assigned to a server.
  SkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

