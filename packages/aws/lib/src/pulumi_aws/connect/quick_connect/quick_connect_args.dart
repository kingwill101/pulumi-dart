// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../quick_connect_quick_connect_config/quick_connect_quick_connect_config.dart';

/// The set of arguments for QuickConnect.
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

  QuickConnectArgs({
    this.description,
    required this.instanceId,
    this.name,
    required this.quickConnectConfig,
    this.region,
    this.tags,
  });

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      quickConnectConfig: pulumi.Input.asInput<QuickConnectQuickConnectConfig>(
          map['quickConnectConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
