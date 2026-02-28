// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_billing_account_exclusion_args_doc}
/// Arguments for getBillingAccountExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_billing_account_exclusion_args_doc}
class GetBillingAccountExclusionArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> exclusionId;

  /// Creates a new [GetBillingAccountExclusionArgs].
  /// [billingAccountId] Required.
  /// [exclusionId] Required.
  GetBillingAccountExclusionArgs({
    required String billingAccountId,
    required String exclusionId,
  })  : billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
        exclusionId = pulumi.Input.asInput<String>(exclusionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['exclusionId'] = exclusionId;
    return map;
  }

  factory GetBillingAccountExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountExclusionArgs(
      billingAccountId: map['billingAccountId'] as String,
      exclusionId: map['exclusionId'] as String,
    );
  }
}
