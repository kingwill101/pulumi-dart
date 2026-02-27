// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getChannelPartnerRepricingConfig.
class GetChannelPartnerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  final pulumi.Input<String> channelPartnerRepricingConfigId;

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
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      channelPartnerLinkId:
          pulumi.Input.asInput<String>(map['channelPartnerLinkId']),
      channelPartnerRepricingConfigId:
          pulumi.Input.asInput<String>(map['channelPartnerRepricingConfigId']),
    );
  }
}
