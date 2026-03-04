// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU properties of the Azure AD B2C tenant. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cBilling).
class B2CResourceSKUResponse {
  /// The name of the SKU for the tenant.
  final pulumi.Input<String>? name;

  /// The tier of the tenant.
  final pulumi.Input<String>? tier;

  /// Creates a new [B2CResourceSKUResponse].
  /// [name] The name of the SKU for the tenant.
  /// [tier] The tier of the tenant.
  B2CResourceSKUResponse({this.name, this.tier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'tier': ?tier};
  }

  factory B2CResourceSKUResponse.fromMap(Map<String, dynamic> map) {
    return B2CResourceSKUResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
