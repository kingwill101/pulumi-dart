// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_partner_link_link_state.dart';

/// The set of arguments for ChannelPartnerLink.
class ChannelPartnerLinkArgs {
  final pulumi.Input<String> accountId;

  /// State of the channel partner link.
  final pulumi.Input<ChannelPartnerLinkLinkState> linkState;

  /// Cloud Identity ID of the linked reseller.
  final pulumi.Input<String> resellerCloudIdentityId;

  ChannelPartnerLinkArgs({
    required this.accountId,
    required this.linkState,
    required this.resellerCloudIdentityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['linkState'] =
        pulumi.Input.mapInputValue<ChannelPartnerLinkLinkState, String>(
            linkState, (value) => value.value);
    map['resellerCloudIdentityId'] = resellerCloudIdentityId;
    return map;
  }

  factory ChannelPartnerLinkArgs.fromMap(Map<String, dynamic> map) {
    return ChannelPartnerLinkArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      linkState:
          pulumi.Input.asInput<ChannelPartnerLinkLinkState>(map['linkState']),
      resellerCloudIdentityId:
          pulumi.Input.asInput<String>(map['resellerCloudIdentityId']),
    );
  }
}
