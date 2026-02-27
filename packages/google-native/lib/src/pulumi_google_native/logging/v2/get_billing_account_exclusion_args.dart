// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBillingAccountExclusion.
class GetBillingAccountExclusionArgs {
  final Input<String> billingAccountId;
  final Input<String> exclusionId;

  GetBillingAccountExclusionArgs({
    required this.billingAccountId,
    required this.exclusionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['exclusionId'] = exclusionId;
    return map;
  }

  factory GetBillingAccountExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountExclusionArgs(
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      exclusionId: Input.asInput<String>(map['exclusionId']),
    );
  }
}
