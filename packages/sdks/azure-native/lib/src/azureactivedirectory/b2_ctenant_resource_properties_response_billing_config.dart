// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The billing configuration for the tenant.
class B2CTenantResourcePropertiesResponseBillingConfig {
  /// The type of billing. Will be MAU for all new customers. If 'Auths', it can be updated to 'MAU'. Cannot be changed if value is 'MAU'. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cbilling).
  final pulumi.Input<String>? billingType;
  /// The data from which the billing type took effect
  final pulumi.Input<String> effectiveStartDateUtc;

  /// Creates a new [B2CTenantResourcePropertiesResponseBillingConfig].
  /// [billingType] The type of billing. Will be MAU for all new customers. If 'Auths', it can be updated to 'MAU'. Cannot be changed if value is 'MAU'. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cbilling).
  /// [effectiveStartDateUtc] The data from which the billing type took effect
  const B2CTenantResourcePropertiesResponseBillingConfig({
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
      billingType: (() { final guardedValue = map['billingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveStartDateUtc: pulumi.Input.fromValue(map['effectiveStartDateUtc'] as String),
    );
  }
}
