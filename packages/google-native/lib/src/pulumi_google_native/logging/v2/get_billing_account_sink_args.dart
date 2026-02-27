// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBillingAccountSink.
class GetBillingAccountSinkArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> sinkId;

  GetBillingAccountSinkArgs({
    required this.billingAccountId,
    required this.sinkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['sinkId'] = sinkId;
    return map;
  }

  factory GetBillingAccountSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountSinkArgs(
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      sinkId: pulumi.Input.asInput<String>(map['sinkId']),
    );
  }
}
