// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomer.
class GetCustomerArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  final pulumi.Input<String> customerId;

  GetCustomerArgs({
    required this.accountId,
    required this.channelPartnerLinkId,
    required this.customerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['channelPartnerLinkId'] = channelPartnerLinkId;
    map['customerId'] = customerId;
    return map;
  }

  factory GetCustomerArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      channelPartnerLinkId:
          pulumi.Input.asInput<String>(map['channelPartnerLinkId']),
      customerId: pulumi.Input.asInput<String>(map['customerId']),
    );
  }
}
