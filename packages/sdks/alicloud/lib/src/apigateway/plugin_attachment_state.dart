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
    this.apiId,
    this.groupId,
    this.pluginId,
    this.stageName,
  });

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
      apiId: map['apiId'] == null ? null : (map['apiId'] as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      pluginId: map['pluginId'] == null ? null : (map['pluginId'] as String).input(),
      stageName: map['stageName'] == null ? null : (map['stageName'] as String).input(),
    );
  }
}

