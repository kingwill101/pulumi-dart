// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEntitlement.
class GetEntitlementArgs {
  final Input<String> accountId;
  final Input<String> customerId;
  final Input<String> entitlementId;

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
      accountId: Input.asInput<String>(map['accountId']),
      customerId: Input.asInput<String>(map['customerId']),
      entitlementId: Input.asInput<String>(map['entitlementId']),
    );
  }
}
