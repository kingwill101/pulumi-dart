// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBillingAccountIamPolicy.
class GetBillingAccountIamPolicyArgs {
  final Input<String> billingAccountId;
  final Input<int>? optionsRequestedPolicyVersion;

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
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
    );
  }
}
