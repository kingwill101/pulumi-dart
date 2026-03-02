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
  final pulumi.Input<List<TrustAnchorNotificationSetting>>? notificationSettings;
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
    this.enabled,
    this.name,
    this.notificationSettings,
    required this.source,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<List<TrustAnchorNotificationSetting>, List<Map<String, dynamic>>>(notificationSettings, (value) => pulumi.Input.encodeList<TrustAnchorNotificationSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': pulumi.Input.mapInputValue<TrustAnchorSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory TrustAnchorArgs.fromMap(Map<String, dynamic> map) {
    return TrustAnchorArgs(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notificationSettings: map['notificationSettings'] == null ? null : (pulumi.Input.decodeList<TrustAnchorNotificationSetting>(map['notificationSettings'], (value) => TrustAnchorNotificationSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      source: (TrustAnchorSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

