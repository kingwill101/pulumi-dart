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
  const TrustAnchorArgs({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrustAnchorNotificationSetting>(guardedValue, (value) => TrustAnchorNotificationSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      source: pulumi.Input.fromValue(TrustAnchorSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

