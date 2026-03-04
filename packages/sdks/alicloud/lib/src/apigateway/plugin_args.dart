// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_plugin_plugin_args_doc}
/// The set of arguments for Plugin.
/// {@endtemplate}
/// {@macro pulumi_apigateway_plugin_plugin_args_doc}
class PluginArgs {
  /// The description of the plug-in, which cannot exceed 200 characters.
  final pulumi.Input<String>? description;

  /// The definition statement of the plug-in. Plug-in definition statements in the JSON and YAML formats are supported.
  final pulumi.Input<String> pluginData;

  /// The name of the plug-in that you want to create. It can contain uppercase English letters, lowercase English letters, Chinese characters, numbers, and underscores (_). It must be 4 to 50 characters in length and cannot start with an underscore (_).
  final pulumi.Input<String> pluginName;

  /// The type of the plug-in. Valid values:
  /// - "trafficControl"
  /// - "ipControl"
  /// - "backendSignature"
  /// - "jwtAuth"
  /// - "basicAuth"
  /// - "cors"
  /// - "caching"
  /// - "routing"
  /// - "accessControl"
  /// - "errorMapping"
  /// - "circuitBreaker"
  /// - "remoteAuth"
  /// - "logMask"
  /// - "transformer".
  final pulumi.Input<String> pluginType;

  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PluginArgs].
  /// [description] The description of the plug-in, which cannot exceed 200 characters.
  /// [pluginData] The definition statement of the plug-in. Plug-in definition statements in the JSON and YAML formats are supported.
  /// [pluginName] The name of the plug-in that you want to create. It can contain uppercase English letters, lowercase English letters, Chinese characters, numbers, and underscores (_). It must be 4 to 50 characters in length and cannot start with an underscore (_).
  /// [pluginType] The type of the plug-in. Valid values:
  /// [tags] The tag of the resource.
  PluginArgs({
    this.description,
    required this.pluginData,
    required this.pluginName,
    required this.pluginType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'pluginData': pluginData,
      'pluginName': pluginName,
      'pluginType': pluginType,
      'tags': ?tags,
    };
  }

  factory PluginArgs.fromMap(Map<String, dynamic> map) {
    return PluginArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pluginData: pulumi.Input.fromValue(map['pluginData'] as String),
      pluginName: pulumi.Input.fromValue(map['pluginName'] as String),
      pluginType: pulumi.Input.fromValue(map['pluginType'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
