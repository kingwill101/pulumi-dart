// ignore_for_file: unused_element, unnecessary_cast


/// Property bag from billing account
class AccountResourceResponseProperties {
  /// Customer owned application ID
  final String appId;
  /// Billing Plan Id
  final String billingPlanId;
  /// Provisioning state.
  final String provisioningState;

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
      appId: map['appId'] as String,
      billingPlanId: map['billingPlanId'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

