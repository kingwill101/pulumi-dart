// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMscSubSubscriptionsSubscription {
  /// The channel the Subscription.
  final pulumi.Input<String> channel;
  /// The ids of subscribed contacts.
  final pulumi.Input<List<int>> contactIds;
  /// The description of the Subscription.
  final pulumi.Input<String> description;
  /// The status of email subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int> emailStatus;
  /// The ID of the Subscription.
  final pulumi.Input<String> id;
  /// The ID of the Subscription.
  final pulumi.Input<String> itemId;
  /// The name of the Subscription.
  final pulumi.Input<String> itemName;
  /// The status of pmsg subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int> pmsgStatus;
  /// The status of sms subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int> smsStatus;
  /// The status of tts subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int> ttsStatus;
  /// The ids of subscribed webhooks.
  final pulumi.Input<List<int>> webhookIds;
  /// The status of webhook subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int> webhookStatus;

  /// Creates a new [GetMscSubSubscriptionsSubscription].
  /// [channel] The channel the Subscription.
  /// [contactIds] The ids of subscribed contacts.
  /// [description] The description of the Subscription.
  /// [emailStatus] The status of email subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [id] The ID of the Subscription.
  /// [itemId] The ID of the Subscription.
  /// [itemName] The name of the Subscription.
  /// [pmsgStatus] The status of pmsg subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [smsStatus] The status of sms subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [ttsStatus] The status of tts subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [webhookIds] The ids of subscribed webhooks.
  /// [webhookStatus] The status of webhook subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  GetMscSubSubscriptionsSubscription({
    required this.channel,
    required this.contactIds,
    required this.description,
    required this.emailStatus,
    required this.id,
    required this.itemId,
    required this.itemName,
    required this.pmsgStatus,
    required this.smsStatus,
    required this.ttsStatus,
    required this.webhookIds,
    required this.webhookStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'contactIds': contactIds,
      'description': description,
      'emailStatus': emailStatus,
      'id': id,
      'itemId': itemId,
      'itemName': itemName,
      'pmsgStatus': pmsgStatus,
      'smsStatus': smsStatus,
      'ttsStatus': ttsStatus,
      'webhookIds': webhookIds,
      'webhookStatus': webhookStatus,
    };
  }

  factory GetMscSubSubscriptionsSubscription.fromMap(Map<String, dynamic> map) {
    return GetMscSubSubscriptionsSubscription(
      channel: (map['channel'] as String).input(),
      contactIds: ((map['contactIds'] as List).cast<int>()).input(),
      description: (map['description'] as String).input(),
      emailStatus: (map['emailStatus'] as int).input(),
      id: (map['id'] as String).input(),
      itemId: (map['itemId'] as String).input(),
      itemName: (map['itemName'] as String).input(),
      pmsgStatus: (map['pmsgStatus'] as int).input(),
      smsStatus: (map['smsStatus'] as int).input(),
      ttsStatus: (map['ttsStatus'] as int).input(),
      webhookIds: ((map['webhookIds'] as List).cast<int>()).input(),
      webhookStatus: (map['webhookStatus'] as int).input(),
    );
  }
}

