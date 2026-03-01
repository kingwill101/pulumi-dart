// ignore_for_file: unused_element, unnecessary_cast


/// The billing configuration for the tenant.
class B2CTenantResourcePropertiesResponseBillingConfig {
  /// The type of billing. Will be MAU for all new customers. If 'Auths', it can be updated to 'MAU'. Cannot be changed if value is 'MAU'. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cbilling).
  final String? billingType;
  /// The data from which the billing type took effect
  final String effectiveStartDateUtc;

  /// Creates a new [B2CTenantResourcePropertiesResponseBillingConfig].
  /// [billingType] The type of billing. Will be MAU for all new customers. If 'Auths', it can be updated to 'MAU'. Cannot be changed if value is 'MAU'. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cbilling).
  /// [effectiveStartDateUtc] The data from which the billing type took effect
  B2CTenantResourcePropertiesResponseBillingConfig({
    this.billingType,
    required this.effectiveStartDateUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingType': ?billingType,
      'effectiveStartDateUtc': effectiveStartDateUtc,
    };
  }

  factory B2CTenantResourcePropertiesResponseBillingConfig.fromMap(Map<String, dynamic> map) {
    return B2CTenantResourcePropertiesResponseBillingConfig(
      billingType: map['billingType'] == null ? null : map['billingType'] as String,
      effectiveStartDateUtc: map['effectiveStartDateUtc'] as String,
    );
  }
}

