// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_anchor_notification_setting.dart';
import 'trust_anchor_source.dart';

/// {@template pulumi_rolesanywhere_trust_anchor_trust_anchor_args_doc}
/// The set of arguments for TrustAnchor.
/// {@endtemplate}
/// {@macro pulumi_rolesanywhere_trust_anchor_trust_anchor_args_doc}
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

  /// Creates a new [TrustAnchorArgs].
  /// [enabled] Whether or not the Trust Anchor should be enabled.
  /// [name] The name of the Trust Anchor.
  /// [notificationSettings] Optional.
  /// [source] The source of trust, documented below
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TrustAnchorArgs({
    bool? enabled,
    String? name,
    List<TrustAnchorNotificationSetting>? notificationSettings,
    required TrustAnchorSource source,
    Map<String, String>? tags,
  })  : enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        name = pulumi.Input.asOptionalInput<String>(name),
        notificationSettings =
            pulumi.Input.asOptionalInput<List<TrustAnchorNotificationSetting>>(
                notificationSettings),
        source = pulumi.Input.asInput<TrustAnchorSource>(source),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      notificationSettings: map['notificationSettings'] == null
          ? null
          : pulumi.Input.decodeList<TrustAnchorNotificationSetting>(
              map['notificationSettings'],
              (value) => TrustAnchorNotificationSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      source: TrustAnchorSource.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
