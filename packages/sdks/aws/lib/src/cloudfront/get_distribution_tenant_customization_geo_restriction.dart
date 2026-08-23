// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionTenantCustomizationGeoRestriction {
  final pulumi.Input<List<String>> locations;
  final pulumi.Input<String> restrictionType;

  /// Creates a new [GetDistributionTenantCustomizationGeoRestriction].
  /// [locations] Required.
  /// [restrictionType] Required.
  const GetDistributionTenantCustomizationGeoRestriction({
    required this.locations,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
      'restrictionType': restrictionType,
    };
  }

  factory GetDistributionTenantCustomizationGeoRestriction.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantCustomizationGeoRestriction(
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
      restrictionType: pulumi.Input.fromValue(map['restrictionType'] as String),
    );
  }
}
