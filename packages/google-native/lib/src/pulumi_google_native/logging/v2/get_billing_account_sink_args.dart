// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBillingAccountSink.
class GetBillingAccountSinkArgs {
  final Input<String> billingAccountId;
  final Input<String> sinkId;

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
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      sinkId: Input.asInput<String>(map['sinkId']),
    );
  }
}
