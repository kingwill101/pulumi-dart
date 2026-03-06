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
  const PluginAttachmentState({
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
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pluginId: (() { final guardedValue = map['pluginId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stageName: (() { final guardedValue = map['stageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

