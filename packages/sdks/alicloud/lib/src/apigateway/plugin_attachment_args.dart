// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_plugin_attachment_plugin_attachment_args_doc}
/// The set of arguments for PluginAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigateway_plugin_attachment_plugin_attachment_args_doc}
class PluginAttachmentArgs {
  /// The api_id that plugin attaches to.
  final pulumi.Input<String> apiId;
  /// The group that the api belongs to.
  final pulumi.Input<String> groupId;
  /// The plugin that attaches to the api.
  final pulumi.Input<String> pluginId;
  /// Stage that the plugin attaches to.
  final pulumi.Input<String> stageName;

  /// Creates a new [PluginAttachmentArgs].
  /// [apiId] The api_id that plugin attaches to.
  /// [groupId] The group that the api belongs to.
  /// [pluginId] The plugin that attaches to the api.
  /// [stageName] Stage that the plugin attaches to.
  PluginAttachmentArgs({
    required this.apiId,
    required this.groupId,
    required this.pluginId,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'groupId': groupId,
      'pluginId': pluginId,
      'stageName': stageName,
    };
  }

  factory PluginAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PluginAttachmentArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      pluginId: pulumi.Input.fromValue(map['pluginId'] as String),
      stageName: pulumi.Input.fromValue(map['stageName'] as String),
    );
  }
}

