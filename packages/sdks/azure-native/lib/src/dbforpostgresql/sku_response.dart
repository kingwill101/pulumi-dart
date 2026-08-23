// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute information of a server.
class SkuResponse {
  /// Name by which is known a given compute size assigned to a server.
  final pulumi.Input<String> name;
  /// Tier of the compute assigned to a server.
  final pulumi.Input<String> tier;

  /// Creates a new [SkuResponse].
  /// [name] Name by which is known a given compute size assigned to a server.
  /// [tier] Tier of the compute assigned to a server.
  const SkuResponse({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
