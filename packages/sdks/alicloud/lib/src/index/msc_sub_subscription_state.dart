// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MscSubSubscription resources.
class MscSubSubscriptionState {
  /// The channel the Subscription.
  final pulumi.Input<String>? channel;
  /// The ids of subscribed contacts.
  /// **NOTE:** There is a potential diff error because of the order of `contact_ids` values indefinite.
  /// So, from version 1.161.0, `contact_ids` type has been updated as `set` from `list`,
  /// and you can use tolist to convert it to a list.
  final pulumi.Input<List<String>>? contactIds;
  /// The description of the Subscription.
  final pulumi.Input<String>? description;
  /// The status of email subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int>? emailStatus;
  /// The name of the Subscription. **NOTE:**  You should use the `alicloud.getMscSubSubscriptions` to query the available subscription item name.
  final pulumi.Input<String>? itemName;
  /// The status of pmsg subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int>? pmsgStatus;
  /// The status of sms subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int>? smsStatus;
  /// The status of tts subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int>? ttsStatus;
  /// The ids of subscribed webhooks.
  final pulumi.Input<List<String>>? webhookIds;
  /// The status of webhook subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int>? webhookStatus;

  /// Creates a new [MscSubSubscriptionState].
  /// [channel] The channel the Subscription.
  /// [contactIds] The ids of subscribed contacts.
  /// [description] The description of the Subscription.
  /// [emailStatus] The status of email subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [itemName] The name of the Subscription. **NOTE:**  You should use the `alicloud.getMscSubSubscriptions` to query the available subscription item name.
  /// [pmsgStatus] The status of pmsg subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [smsStatus] The status of sms subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [ttsStatus] The status of tts subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [webhookIds] The ids of subscribed webhooks.
  /// [webhookStatus] The status of webhook subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  MscSubSubscriptionState({
    pulumi.Output<String>? channel,
    pulumi.Output<List<String>>? contactIds,
    pulumi.Output<String>? description,
    pulumi.Output<int>? emailStatus,
    pulumi.Output<String>? itemName,
    pulumi.Output<int>? pmsgStatus,
    pulumi.Output<int>? smsStatus,
    pulumi.Output<int>? ttsStatus,
    pulumi.Output<List<String>>? webhookIds,
    pulumi.Output<int>? webhookStatus,
  }) :
      channel = pulumi.Input.asOptionalInput<String>(channel),
      contactIds = pulumi.Input.asOptionalInput<List<String>>(contactIds),
      description = pulumi.Input.asOptionalInput<String>(description),
      emailStatus = pulumi.Input.asOptionalInput<int>(emailStatus),
      itemName = pulumi.Input.asOptionalInput<String>(itemName),
      pmsgStatus = pulumi.Input.asOptionalInput<int>(pmsgStatus),
      smsStatus = pulumi.Input.asOptionalInput<int>(smsStatus),
      ttsStatus = pulumi.Input.asOptionalInput<int>(ttsStatus),
      webhookIds = pulumi.Input.asOptionalInput<List<String>>(webhookIds),
      webhookStatus = pulumi.Input.asOptionalInput<int>(webhookStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'contactIds': ?contactIds,
      'description': ?description,
      'emailStatus': ?emailStatus,
      'itemName': ?itemName,
      'pmsgStatus': ?pmsgStatus,
      'smsStatus': ?smsStatus,
      'ttsStatus': ?ttsStatus,
      'webhookIds': ?webhookIds,
      'webhookStatus': ?webhookStatus,
    };
  }

  factory MscSubSubscriptionState.fromMap(Map<String, dynamic> map) {
    return MscSubSubscriptionState(
      channel: map['channel'] == null ? null : pulumi.Output.create<String>(map['channel'] as String),
      contactIds: map['contactIds'] == null ? null : pulumi.Output.create<List<String>>((map['contactIds'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      emailStatus: map['emailStatus'] == null ? null : pulumi.Output.create<int>(map['emailStatus'] as int),
      itemName: map['itemName'] == null ? null : pulumi.Output.create<String>(map['itemName'] as String),
      pmsgStatus: map['pmsgStatus'] == null ? null : pulumi.Output.create<int>(map['pmsgStatus'] as int),
      smsStatus: map['smsStatus'] == null ? null : pulumi.Output.create<int>(map['smsStatus'] as int),
      ttsStatus: map['ttsStatus'] == null ? null : pulumi.Output.create<int>(map['ttsStatus'] as int),
      webhookIds: map['webhookIds'] == null ? null : pulumi.Output.create<List<String>>((map['webhookIds'] as List).cast<String>()),
      webhookStatus: map['webhookStatus'] == null ? null : pulumi.Output.create<int>(map['webhookStatus'] as int),
    );
  }
}

