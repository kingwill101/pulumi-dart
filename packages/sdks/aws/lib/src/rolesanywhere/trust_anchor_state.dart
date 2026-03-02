// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_anchor_notification_setting.dart';
import 'trust_anchor_source.dart';

/// Input properties used for looking up and filtering TrustAnchor resources.
class TrustAnchorState {
  /// Amazon Resource Name (ARN) of the Trust Anchor
  final pulumi.Input<String>? arn;
  /// Whether or not the Trust Anchor should be enabled.
  final pulumi.Input<bool>? enabled;
  /// The name of the Trust Anchor.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<TrustAnchorNotificationSetting>>? notificationSettings;
  /// The source of trust, documented below
  final pulumi.Input<TrustAnchorSource>? source;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [TrustAnchorState].
  /// [arn] Amazon Resource Name (ARN) of the Trust Anchor
  /// [enabled] Whether or not the Trust Anchor should be enabled.
  /// [name] The name of the Trust Anchor.
  /// [notificationSettings] Optional.
  /// [source] The source of trust, documented below
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  TrustAnchorState({
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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notificationSettings: map['notificationSettings'] == null ? null : (pulumi.Input.decodeList<TrustAnchorNotificationSetting>(map['notificationSettings'], (value) => TrustAnchorNotificationSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      source: map['source'] == null ? null : (TrustAnchorSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

