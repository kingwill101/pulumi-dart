// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccountIamPolicy.
class GetAccountIamPolicyArgs {
  /// The billing account id.
  final pulumi.Input<String> billingAccountId;

  GetAccountIamPolicyArgs({
    required this.billingAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    return map;
  }

  factory GetAccountIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountIamPolicyArgs(
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
    );
  }
}
