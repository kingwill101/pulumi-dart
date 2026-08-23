// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU details
class ManagedHsmSkuResponse {
  /// SKU Family of the managed HSM Pool
  final pulumi.Input<String> family;
  /// SKU of the managed HSM Pool
  final pulumi.Input<String> name;

  /// Creates a new [ManagedHsmSkuResponse].
  /// [family] SKU Family of the managed HSM Pool
  /// [name] SKU of the managed HSM Pool
  const ManagedHsmSkuResponse({
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': name,
    };
  }

  factory ManagedHsmSkuResponse.fromMap(Map<String, dynamic> map) {
    return ManagedHsmSkuResponse(
      family: pulumi.Input.fromValue(map['family'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
