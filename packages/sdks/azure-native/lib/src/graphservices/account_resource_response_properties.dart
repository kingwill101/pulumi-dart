// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Property bag from billing account
class AccountResourceResponseProperties {
  /// Customer owned application ID
  final pulumi.Input<String> appId;

  /// Billing Plan Id
  final pulumi.Input<String> billingPlanId;

  /// Provisioning state.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [AccountResourceResponseProperties].
  /// [appId] Customer owned application ID
  /// [billingPlanId] Billing Plan Id
  /// [provisioningState] Provisioning state.
  AccountResourceResponseProperties({
    required this.appId,
    required this.billingPlanId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'billingPlanId': billingPlanId,
      'provisioningState': provisioningState,
    };
  }

  factory AccountResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return AccountResourceResponseProperties(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      billingPlanId: pulumi.Input.fromValue(map['billingPlanId'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
