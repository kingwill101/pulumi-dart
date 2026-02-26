// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getChannelPartnerRepricingConfig.
class GetChannelPartnerRepricingConfigArgs {
  final Input<String> accountId;
  final Input<String> channelPartnerLinkId;
  final Input<String> channelPartnerRepricingConfigId;

  GetChannelPartnerRepricingConfigArgs({
    required this.accountId,
    required this.channelPartnerLinkId,
    required this.channelPartnerRepricingConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['channelPartnerLinkId'] = channelPartnerLinkId;
    map['channelPartnerRepricingConfigId'] = channelPartnerRepricingConfigId;
    return map;
  }

  factory GetChannelPartnerRepricingConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return GetChannelPartnerRepricingConfigArgs(
      accountId: Input.asInput<String>(map['accountId']),
      channelPartnerLinkId: Input.asInput<String>(map['channelPartnerLinkId']),
      channelPartnerRepricingConfigId:
          Input.asInput<String>(map['channelPartnerRepricingConfigId']),
    );
  }
}
