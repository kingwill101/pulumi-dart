// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCustomer.
class GetCustomerArgs {
  final Input<String> accountId;
  final Input<String> channelPartnerLinkId;
  final Input<String> customerId;

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
      accountId: Input.asInput<String>(map['accountId']),
      channelPartnerLinkId: Input.asInput<String>(map['channelPartnerLinkId']),
      customerId: Input.asInput<String>(map['customerId']),
    );
  }
}
