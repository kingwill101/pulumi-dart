// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trust_anchor_notification_setting/trust_anchor_notification_setting.dart';
import '../trust_anchor_source/trust_anchor_source.dart';

/// The set of arguments for TrustAnchor.
class TrustAnchorArgs {
  /// Whether or not the Trust Anchor should be enabled.
  final pulumi.Input<bool>? enabled;

  /// The name of the Trust Anchor.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<TrustAnchorNotificationSetting>>?
      notificationSettings;

  /// The source of trust, documented below
  final pulumi.Input<TrustAnchorSource> source;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  TrustAnchorArgs({
    this.enabled,
    this.name,
    this.notificationSettings,
    required this.source,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationSettingsValue = notificationSettings;
    if (notificationSettingsValue != null) {
      map['notificationSettings'] = pulumi.Input.mapOptionalInputValue<
              List<TrustAnchorNotificationSetting>, List<Map<String, dynamic>>>(
          notificationSettingsValue,
          (value) => pulumi.Input.encodeList<TrustAnchorNotificationSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['source'] =
        pulumi.Input.mapInputValue<TrustAnchorSource, Map<String, dynamic>>(
            source, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TrustAnchorArgs.fromMap(Map<String, dynamic> map) {
    return TrustAnchorArgs(
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notificationSettings:
          pulumi.Input.asOptionalInput<List<TrustAnchorNotificationSetting>>(
              map['notificationSettings']),
      source: pulumi.Input.asInput<TrustAnchorSource>(map['source']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
