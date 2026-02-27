// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getChannelPartnerLink.
class GetChannelPartnerLinkArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> channelPartnerLinkId;
  final pulumi.Input<String>? view;

  GetChannelPartnerLinkArgs({
    required this.accountId,
    required this.channelPartnerLinkId,
    this.view,
  });

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
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      channelPartnerLinkId:
          pulumi.Input.asInput<String>(map['channelPartnerLinkId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
