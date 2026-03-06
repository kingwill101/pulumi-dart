// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// These properties are used to create the Azure AD for customers tenant. These properties are not part of the Azure resource.
class CreateCIAMTenantPropertiesResponse {
  /// Country code of Azure tenant (e.g. 'US'). Refer to [https://aka.ms/ciam-data-location](https://aka.ms/ciam-data-location) to see valid country codes and corresponding data residency locations. If you do not see a country code in an valid data residency location, choose one from the list.
  final pulumi.Input<String> countryCode;
  /// The display name of the Azure AD for customers tenant.
  final pulumi.Input<String> displayName;

  /// Creates a new [CreateCIAMTenantPropertiesResponse].
  /// [countryCode] Country code of Azure tenant (e.g. 'US'). Refer to [https://aka.ms/ciam-data-location](https://aka.ms/ciam-data-location) to see valid country codes and corresponding data residency locations. If you do not see a country code in an valid data residency location, choose one from the list.
  /// [displayName] The display name of the Azure AD for customers tenant.
  const CreateCIAMTenantPropertiesResponse({
    required this.countryCode,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
      'displayName': displayName,
    };
  }

  factory CreateCIAMTenantPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CreateCIAMTenantPropertiesResponse(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

