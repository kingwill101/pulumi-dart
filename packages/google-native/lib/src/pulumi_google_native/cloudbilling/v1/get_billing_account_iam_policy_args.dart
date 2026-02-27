// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBillingAccountIamPolicy.
class GetBillingAccountIamPolicyArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;

  GetBillingAccountIamPolicyArgs({
    required this.billingAccountId,
    this.optionsRequestedPolicyVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    return map;
  }

  factory GetBillingAccountIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountIamPolicyArgs(
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
    );
  }
}
