// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_user_pool_add_ons_advanced_security_additional_flows.dart';

class UserPoolUserPoolAddOns {
  /// A block to specify the threat protection configuration options for additional authentication types in your user pool, including custom authentication. Detailed below.
  final pulumi.Input<UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows>? advancedSecurityAdditionalFlows;
  /// Mode for advanced security, must be one of `OFF`, `AUDIT` or `ENFORCED`.
  final pulumi.Input<String> advancedSecurityMode;

  /// Creates a new [UserPoolUserPoolAddOns].
  /// [advancedSecurityAdditionalFlows] A block to specify the threat protection configuration options for additional authentication types in your user pool, including custom authentication. Detailed below.
  /// [advancedSecurityMode] Mode for advanced security, must be one of `OFF`, `AUDIT` or `ENFORCED`.
  const UserPoolUserPoolAddOns({
    this.advancedSecurityAdditionalFlows,
    required this.advancedSecurityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSecurityAdditionalFlows': ?pulumi.Input.mapOptionalInputValue<UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows, Map<String, dynamic>>(advancedSecurityAdditionalFlows, (value) => value.toMap()),
      'advancedSecurityMode': advancedSecurityMode,
    };
  }

  factory UserPoolUserPoolAddOns.fromMap(Map<String, dynamic> map) {
    return UserPoolUserPoolAddOns(
      advancedSecurityAdditionalFlows: (() { final guardedValue = map['advancedSecurityAdditionalFlows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedSecurityMode: pulumi.Input.fromValue(map['advancedSecurityMode'] as String),
    );
  }
}

