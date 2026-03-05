// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU properties of the Azure AD for customers tenant. Learn more about Azure AD for customers billing at [https://aka.ms/ciambilling](https://aka.ms/ciambilling).
class CIAMResourceSKUResponse {
  /// The name of the SKU for the tenant.
  final pulumi.Input<String> name;
  /// The tier of the tenant.
  final pulumi.Input<String> tier;

  /// Creates a new [CIAMResourceSKUResponse].
  /// [name] The name of the SKU for the tenant.
  /// [tier] The tier of the tenant.
  CIAMResourceSKUResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory CIAMResourceSKUResponse.fromMap(Map<String, dynamic> map) {
    return CIAMResourceSKUResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

