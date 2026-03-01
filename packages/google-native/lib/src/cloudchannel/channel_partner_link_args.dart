// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_partner_link_link_state.dart';

/// {@template pulumi_cloudchannel_v1_channel_partner_link_args_doc}
/// The set of arguments for ChannelPartnerLink.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_channel_partner_link_args_doc}
class ChannelPartnerLinkArgs {
  final pulumi.Input<String> accountId;

  /// State of the channel partner link.
  final pulumi.Input<ChannelPartnerLinkLinkState> linkState;

  /// Cloud Identity ID of the linked reseller.
  final pulumi.Input<String> resellerCloudIdentityId;

  /// Creates a new [ChannelPartnerLinkArgs].
  /// [accountId] Required.
  /// [linkState] State of the channel partner link.
  /// [resellerCloudIdentityId] Cloud Identity ID of the linked reseller.
  ChannelPartnerLinkArgs({
    required String accountId,
    required ChannelPartnerLinkLinkState linkState,
    required String resellerCloudIdentityId,
  }) : accountId = pulumi.Input.asInput<String>(accountId),
       linkState = pulumi.Input.asInput<ChannelPartnerLinkLinkState>(linkState),
       resellerCloudIdentityId = pulumi.Input.asInput<String>(
         resellerCloudIdentityId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'linkState':
          pulumi.Input.mapInputValue<ChannelPartnerLinkLinkState, String>(
            linkState,
            (value) => value.value,
          ),
      'resellerCloudIdentityId': resellerCloudIdentityId,
    };
  }

  factory ChannelPartnerLinkArgs.fromMap(Map<String, dynamic> map) {
    return ChannelPartnerLinkArgs(
      accountId: map['accountId'] as String,
      linkState: ChannelPartnerLinkLinkState.fromValue(
        map['linkState'] as String,
      ),
      resellerCloudIdentityId: map['resellerCloudIdentityId'] as String,
    );
  }
}
