// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbilling_v1_get_billing_account_args_doc}
/// Arguments for getBillingAccount.
/// {@endtemplate}
/// {@macro pulumi_cloudbilling_v1_get_billing_account_args_doc}
class GetBillingAccountArgs {
  final pulumi.Input<String> billingAccountId;

  /// Creates a new [GetBillingAccountArgs].
  /// [billingAccountId] Required.
  GetBillingAccountArgs({
    required String billingAccountId,
  }) : billingAccountId = pulumi.Input.asInput<String>(billingAccountId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    return map;
  }

  factory GetBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountArgs(
      billingAccountId: map['billingAccountId'] as String,
    );
  }
}
