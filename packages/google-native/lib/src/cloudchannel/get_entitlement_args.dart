// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_entitlement_args_doc}
/// Arguments for getEntitlement.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_entitlement_args_doc}
class GetEntitlementArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;
  final pulumi.Input<String> entitlementId;

  /// Creates a new [GetEntitlementArgs].
  /// [accountId] Required.
  /// [customerId] Required.
  /// [entitlementId] Required.
  GetEntitlementArgs({
    required String accountId,
    required String customerId,
    required String entitlementId,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        customerId = pulumi.Input.asInput<String>(customerId),
        entitlementId = pulumi.Input.asInput<String>(entitlementId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['customerId'] = customerId;
    map['entitlementId'] = entitlementId;
    return map;
  }

  factory GetEntitlementArgs.fromMap(Map<String, dynamic> map) {
    return GetEntitlementArgs(
      accountId: map['accountId'] as String,
      customerId: map['customerId'] as String,
      entitlementId: map['entitlementId'] as String,
    );
  }
}
