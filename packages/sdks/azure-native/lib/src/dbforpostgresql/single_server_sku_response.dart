// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing information related properties of a server.
class SingleServerSkuResponse {
  /// The scale up/out capacity, representing server's compute units.
  final pulumi.Input<int>? capacity;
  /// The family of hardware.
  final pulumi.Input<String>? family;
  /// The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8.
  final pulumi.Input<String> name;
  /// The size code, to be interpreted by resource as appropriate.
  final pulumi.Input<String>? size;
  /// The tier of the particular SKU, e.g. Basic.
  final pulumi.Input<String>? tier;

  /// Creates a new [SingleServerSkuResponse].
  /// [capacity] The scale up/out capacity, representing server's compute units.
  /// [family] The family of hardware.
  /// [name] The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8.
  /// [size] The size code, to be interpreted by resource as appropriate.
  /// [tier] The tier of the particular SKU, e.g. Basic.
  const SingleServerSkuResponse({
    this.capacity,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SingleServerSkuResponse.fromMap(Map<String, dynamic> map) {
    return SingleServerSkuResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

