// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PluginAttachment resources.
class PluginAttachmentState {
  /// The api_id that plugin attaches to.
  final pulumi.Input<String>? apiId;
  /// The group that the api belongs to.
  final pulumi.Input<String>? groupId;
  /// The plugin that attaches to the api.
  final pulumi.Input<String>? pluginId;
  /// Stage that the plugin attaches to.
  final pulumi.Input<String>? stageName;

  /// Creates a new [PluginAttachmentState].
  /// [apiId] The api_id that plugin attaches to.
  /// [groupId] The group that the api belongs to.
  /// [pluginId] The plugin that attaches to the api.
  /// [stageName] Stage that the plugin attaches to.
  PluginAttachmentState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? pluginId,
    pulumi.Output<String>? stageName,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      pluginId = pulumi.Input.asOptionalInput<String>(pluginId),
      stageName = pulumi.Input.asOptionalInput<String>(stageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'groupId': ?groupId,
      'pluginId': ?pluginId,
      'stageName': ?stageName,
    };
  }

  factory PluginAttachmentState.fromMap(Map<String, dynamic> map) {
    return PluginAttachmentState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      pluginId: map['pluginId'] == null ? null : pulumi.Output.create<String>(map['pluginId'] as String),
      stageName: map['stageName'] == null ? null : pulumi.Output.create<String>(map['stageName'] as String),
    );
  }
}

