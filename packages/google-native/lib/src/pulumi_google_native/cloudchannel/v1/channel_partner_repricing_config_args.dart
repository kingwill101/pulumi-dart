// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_repricing_config.dart';

/// The set of arguments for ChannelPartnerRepricingConfig.
class ChannelPartnerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;

  /// The configuration for bill modifications made by a reseller before sending it to ChannelPartner.
  final pulumi.Input<GoogleCloudChannelV1RepricingConfig> repricingConfig;

  ChannelPartnerRepricingConfigArgs({
    required this.accountId,
    required this.channelPartnerLinkId,
    required this.repricingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['channelPartnerLinkId'] = channelPartnerLinkId;
    map['repricingConfig'] = pulumi.Input.mapInputValue<
        GoogleCloudChannelV1RepricingConfig,
        Map<String, dynamic>>(repricingConfig, (value) => value.toMap());
    return map;
  }

  factory ChannelPartnerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return ChannelPartnerRepricingConfigArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      channelPartnerLinkId:
          pulumi.Input.asInput<String>(map['channelPartnerLinkId']),
      repricingConfig:
          pulumi.Input.asInput<GoogleCloudChannelV1RepricingConfig>(
              map['repricingConfig']),
    );
  }
}
