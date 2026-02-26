// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_channel_v1_repricing_config.dart';

/// The set of arguments for ChannelPartnerRepricingConfig.
class ChannelPartnerRepricingConfigArgs {
  final Input<String> accountId;
  final Input<String> channelPartnerLinkId;

  /// The configuration for bill modifications made by a reseller before sending it to ChannelPartner.
  final Input<GoogleCloudChannelV1RepricingConfig> repricingConfig;

  ChannelPartnerRepricingConfigArgs({
    required this.accountId,
    required this.channelPartnerLinkId,
    required this.repricingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['channelPartnerLinkId'] = channelPartnerLinkId;
    map['repricingConfig'] = Input.mapInputValue<
        GoogleCloudChannelV1RepricingConfig,
        Map<String, dynamic>>(repricingConfig, (value) => value.toMap());
    return map;
  }

  factory ChannelPartnerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return ChannelPartnerRepricingConfigArgs(
      accountId: Input.asInput<String>(map['accountId']),
      channelPartnerLinkId: Input.asInput<String>(map['channelPartnerLinkId']),
      repricingConfig: Input.asInput<GoogleCloudChannelV1RepricingConfig>(
          map['repricingConfig']),
    );
  }
}
