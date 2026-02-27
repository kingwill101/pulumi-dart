// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntitlement.
class GetEntitlementArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;
  final pulumi.Input<String> entitlementId;

  GetEntitlementArgs({
    required this.accountId,
    required this.customerId,
    required this.entitlementId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['customerId'] = customerId;
    map['entitlementId'] = entitlementId;
    return map;
  }

  factory GetEntitlementArgs.fromMap(Map<String, dynamic> map) {
    return GetEntitlementArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      customerId: pulumi.Input.asInput<String>(map['customerId']),
      entitlementId: pulumi.Input.asInput<String>(map['entitlementId']),
    );
  }
}
