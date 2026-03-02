// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU properties of the Azure AD B2C tenant. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cBilling).
class B2CResourceSKU {
  /// The name of the SKU for the tenant.
  final pulumi.Input<String>? name;
  /// The tier of the tenant.
  final pulumi.Input<String>? tier;

  /// Creates a new [B2CResourceSKU].
  /// [name] The name of the SKU for the tenant.
  /// [tier] The tier of the tenant.
  B2CResourceSKU({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory B2CResourceSKU.fromMap(Map<String, dynamic> map) {
    return B2CResourceSKU(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

