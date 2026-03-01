// ignore_for_file: unused_element, unnecessary_cast


/// These properties are used to create the Azure AD for customers tenant. These properties are not part of the Azure resource.
class CreateCIAMTenantProperties {
  /// Country code of Azure tenant (e.g. 'US'). Refer to [https://aka.ms/ciam-data-location](https://aka.ms/ciam-data-location) to see valid country codes and corresponding data residency locations. If you do not see a country code in an valid data residency location, choose one from the list.
  final String countryCode;
  /// The display name of the Azure AD for customers tenant.
  final String displayName;

  /// Creates a new [CreateCIAMTenantProperties].
  /// [countryCode] Country code of Azure tenant (e.g. 'US'). Refer to [https://aka.ms/ciam-data-location](https://aka.ms/ciam-data-location) to see valid country codes and corresponding data residency locations. If you do not see a country code in an valid data residency location, choose one from the list.
  /// [displayName] The display name of the Azure AD for customers tenant.
  CreateCIAMTenantProperties({
    required this.countryCode,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
      'displayName': displayName,
    };
  }

  factory CreateCIAMTenantProperties.fromMap(Map<String, dynamic> map) {
    return CreateCIAMTenantProperties(
      countryCode: map['countryCode'] as String,
      displayName: map['displayName'] as String,
    );
  }
}

