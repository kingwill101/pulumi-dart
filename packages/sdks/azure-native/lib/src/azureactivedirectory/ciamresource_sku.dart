// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU properties of the Azure AD for customers tenant. Learn more about Azure AD for customers billing at [https://aka.ms/ciambilling](https://aka.ms/ciambilling).
class CIAMResourceSKU {
  /// The name of the SKU for the tenant.
  final pulumi.Input<dynamic> name;
  /// The tier of the tenant.
  final pulumi.Input<dynamic> tier;

  /// Creates a new [CIAMResourceSKU].
  /// [name] The name of the SKU for the tenant.
  /// [tier] The tier of the tenant.
  const CIAMResourceSKU({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory CIAMResourceSKU.fromMap(Map<String, dynamic> map) {
    return CIAMResourceSKU(
      name: pulumi.Input.fromValue(map['name']),
      tier: pulumi.Input.fromValue(map['tier']),
    );
  }
}
