// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBillingAccount.
class GetBillingAccountArgs {
  final Input<String> billingAccountId;

  GetBillingAccountArgs({
    required this.billingAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    return map;
  }

  factory GetBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountArgs(
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
    );
  }
}
