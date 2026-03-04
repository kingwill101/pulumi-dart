// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_msc_sub_subscription_msc_sub_subscription_args_doc}
/// The set of arguments for MscSubSubscription.
/// {@endtemplate}
/// {@macro pulumi_index_msc_sub_subscription_msc_sub_subscription_args_doc}
class MscSubSubscriptionArgs {
  /// The ids of subscribed contacts.
  /// **NOTE:** There is a potential diff error because of the order of `contact_ids` values indefinite.
  /// So, from version 1.161.0, `contact_ids` type has been updated as `set` from `list`,
  /// and you can use tolist to convert it to a list.
  final pulumi.Input<List<String>>? contactIds;

  /// The status of email subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  final pulumi.Input<int>? emailStatus;

  /// The name of the Subscription. **NOTE:**  You should use the `alicloud.getMscSubSubscriptions` to query the available subscription item name.
  final pulumi.Input<String> itemName;

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

  /// Creates a new [MscSubSubscriptionArgs].
  /// [contactIds] The ids of subscribed contacts.
  /// [emailStatus] The status of email subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [itemName] The name of the Subscription. **NOTE:**  You should use the `alicloud.getMscSubSubscriptions` to query the available subscription item name.
  /// [pmsgStatus] The status of pmsg subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [smsStatus] The status of sms subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [ttsStatus] The status of tts subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  /// [webhookIds] The ids of subscribed webhooks.
  /// [webhookStatus] The status of webhook subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  MscSubSubscriptionArgs({
    this.contactIds,
    this.emailStatus,
    required this.itemName,
    this.pmsgStatus,
    this.smsStatus,
    this.ttsStatus,
    this.webhookIds,
    this.webhookStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactIds': ?contactIds,
      'emailStatus': ?emailStatus,
      'itemName': itemName,
      'pmsgStatus': ?pmsgStatus,
      'smsStatus': ?smsStatus,
      'ttsStatus': ?ttsStatus,
      'webhookIds': ?webhookIds,
      'webhookStatus': ?webhookStatus,
    };
  }

  factory MscSubSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return MscSubSubscriptionArgs(
      contactIds: (() {
        final guardedValue = map['contactIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      emailStatus: (() {
        final guardedValue = map['emailStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      itemName: pulumi.Input.fromValue(map['itemName'] as String),
      pmsgStatus: (() {
        final guardedValue = map['pmsgStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      smsStatus: (() {
        final guardedValue = map['smsStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ttsStatus: (() {
        final guardedValue = map['ttsStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      webhookIds: (() {
        final guardedValue = map['webhookIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      webhookStatus: (() {
        final guardedValue = map['webhookStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
