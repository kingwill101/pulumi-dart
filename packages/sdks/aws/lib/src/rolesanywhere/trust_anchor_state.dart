// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_anchor_notification_setting.dart';
import 'trust_anchor_source.dart';

/// Input properties used for looking up and filtering TrustAnchor resources.
class TrustAnchorState {
  /// ARN of the Trust Anchor
  final pulumi.Input<String?>? arn;
  /// Whether or not the Trust Anchor should be enabled.
  final pulumi.Input<bool?>? enabled;
  /// The name of the Trust Anchor.
  final pulumi.Input<String?>? name;
  final pulumi.Input<List<TrustAnchorNotificationSetting>?>? notificationSettings;
  /// The source of trust, documented below
  final pulumi.Input<TrustAnchorSource?>? source;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [TrustAnchorState].
  /// [arn] ARN of the Trust Anchor
  /// [enabled] Whether or not the Trust Anchor should be enabled.
  /// [name] The name of the Trust Anchor.
  /// [notificationSettings] Optional.
  /// [source] The source of trust, documented below
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const TrustAnchorState({
    this.arn,
    this.enabled,
    this.name,
    this.notificationSettings,
    this.source,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'enabled': ?enabled,
      'name': ?name,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<List<TrustAnchorNotificationSetting>, List<Map<String, dynamic>>>(notificationSettings, (value) => pulumi.Input.encodeList<TrustAnchorNotificationSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': ?pulumi.Input.mapOptionalInputValue<TrustAnchorSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory TrustAnchorState.fromMap(Map<String, dynamic> map) {
    return TrustAnchorState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrustAnchorNotificationSetting>(guardedValue, (value) => TrustAnchorNotificationSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustAnchorSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
