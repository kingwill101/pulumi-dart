// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_repricing_config.dart';

/// {@template pulumi_cloudchannel_v1_channel_partner_repricing_config_args_doc}
/// The set of arguments for ChannelPartnerRepricingConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_channel_partner_repricing_config_args_doc}
class ChannelPartnerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  /// The configuration for bill modifications made by a reseller before sending it to ChannelPartner.
  final pulumi.Input<GoogleCloudChannelV1RepricingConfig> repricingConfig;

  /// Creates a new [ChannelPartnerRepricingConfigArgs].
  /// [accountId] Required.
  /// [channelPartnerLinkId] Required.
  /// [repricingConfig] The configuration for bill modifications made by a reseller before sending it to ChannelPartner.
  ChannelPartnerRepricingConfigArgs({
    required String accountId,
    required String channelPartnerLinkId,
    required GoogleCloudChannelV1RepricingConfig repricingConfig,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      channelPartnerLinkId = pulumi.Input.asInput<String>(channelPartnerLinkId),
      repricingConfig = pulumi.Input.asInput<GoogleCloudChannelV1RepricingConfig>(repricingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'channelPartnerLinkId': channelPartnerLinkId,
      'repricingConfig': pulumi.Input.mapInputValue<GoogleCloudChannelV1RepricingConfig, Map<String, dynamic>>(repricingConfig, (value) => value.toMap()),
    };
  }

  factory ChannelPartnerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return ChannelPartnerRepricingConfigArgs(
      accountId: map['accountId'] as String,
      channelPartnerLinkId: map['channelPartnerLinkId'] as String,
      repricingConfig: GoogleCloudChannelV1RepricingConfig.fromMap((map['repricingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

