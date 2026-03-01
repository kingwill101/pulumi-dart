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
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<List<TrustAnchorNotificationSetting>>? notificationSettings,
    pulumi.Output<TrustAnchorSource>? source,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationSettings = pulumi.Input.asOptionalInput<List<TrustAnchorNotificationSetting>>(notificationSettings),
      source = pulumi.Input.asOptionalInput<TrustAnchorSource>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationSettings: map['notificationSettings'] == null ? null : pulumi.Output.create<List<TrustAnchorNotificationSetting>>(pulumi.Input.decodeList<TrustAnchorNotificationSetting>(map['notificationSettings'], (value) => TrustAnchorNotificationSetting.fromMap((value as Map).cast<String, dynamic>()))),
      source: map['source'] == null ? null : pulumi.Output.create<TrustAnchorSource>(TrustAnchorSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

