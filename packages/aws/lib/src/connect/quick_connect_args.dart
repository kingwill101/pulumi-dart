// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quick_connect_quick_connect_config.dart';

/// {@template pulumi_connect_quick_connect_quick_connect_args_doc}
/// The set of arguments for QuickConnect.
/// {@endtemplate}
/// {@macro pulumi_connect_quick_connect_quick_connect_args_doc}
class QuickConnectArgs {
  /// Specifies the description of the Quick Connect.
  final pulumi.Input<String>? description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// Specifies the name of the Quick Connect.
  final pulumi.Input<String>? name;

  /// A block that defines the configuration information for the Quick Connect: `quick_connect_type` and one of `phone_config`, `queue_config`, `user_config` . The Quick Connect Config block is documented below.
  final pulumi.Input<QuickConnectQuickConnectConfig> quickConnectConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the Quick Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [QuickConnectArgs].
  /// [description] Specifies the description of the Quick Connect.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Quick Connect.
  /// [quickConnectConfig] A block that defines the configuration information for the Quick Connect: `quick_connect_type` and one of `phone_config`, `queue_config`, `user_config` . The Quick Connect Config block is documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Quick Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  QuickConnectArgs({
    String? description,
    required String instanceId,
    String? name,
    required QuickConnectQuickConnectConfig quickConnectConfig,
    String? region,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        name = pulumi.Input.asOptionalInput<String>(name),
        quickConnectConfig =
            pulumi.Input.asInput<QuickConnectQuickConnectConfig>(
                quickConnectConfig),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['quickConnectConfig'] = pulumi.Input.mapInputValue<
        QuickConnectQuickConnectConfig,
        Map<String, dynamic>>(quickConnectConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory QuickConnectArgs.fromMap(Map<String, dynamic> map) {
    return QuickConnectArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      quickConnectConfig: QuickConnectQuickConnectConfig.fromMap(
          (map['quickConnectConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
