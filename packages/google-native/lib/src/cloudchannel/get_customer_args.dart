// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_customer_args_doc}
/// Arguments for getCustomer.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_customer_args_doc}
class GetCustomerArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  final pulumi.Input<String> customerId;

  /// Creates a new [GetCustomerArgs].
  /// [accountId] Required.
  /// [channelPartnerLinkId] Required.
  /// [customerId] Required.
  GetCustomerArgs({
    required String accountId,
    required String channelPartnerLinkId,
    required String customerId,
  }) : accountId = pulumi.Input.asInput<String>(accountId),
       channelPartnerLinkId = pulumi.Input.asInput<String>(
         channelPartnerLinkId,
       ),
       customerId = pulumi.Input.asInput<String>(customerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'channelPartnerLinkId': channelPartnerLinkId,
      'customerId': customerId,
    };
  }

  factory GetCustomerArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerArgs(
      accountId: map['accountId'] as String,
      channelPartnerLinkId: map['channelPartnerLinkId'] as String,
      customerId: map['customerId'] as String,
    );
  }
}
