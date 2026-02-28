// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudchannel_v1_get_channel_partner_link_args_doc}
/// Arguments for getChannelPartnerLink.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_get_channel_partner_link_args_doc}
class GetChannelPartnerLinkArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetChannelPartnerLinkArgs].
  /// [accountId] Required.
  /// [channelPartnerLinkId] Required.
  /// [view] Optional.
  GetChannelPartnerLinkArgs({
    required String accountId,
    required String channelPartnerLinkId,
    String? view,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        channelPartnerLinkId =
            pulumi.Input.asInput<String>(channelPartnerLinkId),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['channelPartnerLinkId'] = channelPartnerLinkId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetChannelPartnerLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelPartnerLinkArgs(
      accountId: map['accountId'] as String,
      channelPartnerLinkId: map['channelPartnerLinkId'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
