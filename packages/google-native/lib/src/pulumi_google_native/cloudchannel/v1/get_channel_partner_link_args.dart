// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getChannelPartnerLink.
class GetChannelPartnerLinkArgs {
  final Input<String> accountId;
  final Input<String> channelPartnerLinkId;
  final Input<String>? view;

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
      accountId: Input.asInput<String>(map['accountId']),
      channelPartnerLinkId: Input.asInput<String>(map['channelPartnerLinkId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
