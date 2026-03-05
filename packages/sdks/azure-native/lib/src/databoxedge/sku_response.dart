// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU type.
class SkuResponse {
  /// SKU name.
  final pulumi.Input<String>? name;
  /// The SKU tier. This is based on the SKU name.
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [name] SKU name.
  /// [tier] The SKU tier. This is based on the SKU name.
  SkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

