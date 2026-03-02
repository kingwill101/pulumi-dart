// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Plugin resources.
class PluginState {
  /// Create time.
  final pulumi.Input<String>? createTime;
  /// The description of the plug-in, which cannot exceed 200 characters.
  final pulumi.Input<String>? description;
  /// The definition statement of the plug-in. Plug-in definition statements in the JSON and YAML formats are supported.
  final pulumi.Input<String>? pluginData;
  /// The name of the plug-in that you want to create. It can contain uppercase English letters, lowercase English letters, Chinese characters, numbers, and underscores (_). It must be 4 to 50 characters in length and cannot start with an underscore (_).
  final pulumi.Input<String>? pluginName;
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
  final pulumi.Input<String>? pluginType;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PluginState].
  /// [createTime] Create time.
  /// [description] The description of the plug-in, which cannot exceed 200 characters.
  /// [pluginData] The definition statement of the plug-in. Plug-in definition statements in the JSON and YAML formats are supported.
  /// [pluginName] The name of the plug-in that you want to create. It can contain uppercase English letters, lowercase English letters, Chinese characters, numbers, and underscores (_). It must be 4 to 50 characters in length and cannot start with an underscore (_).
  /// [pluginType] The type of the plug-in. Valid values:
  /// [tags] The tag of the resource.
  PluginState({
    this.createTime,
    this.description,
    this.pluginData,
    this.pluginName,
    this.pluginType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'pluginData': ?pluginData,
      'pluginName': ?pluginName,
      'pluginType': ?pluginType,
      'tags': ?tags,
    };
  }

  factory PluginState.fromMap(Map<String, dynamic> map) {
    return PluginState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      pluginData: map['pluginData'] == null ? null : (map['pluginData']! as String).input(),
      pluginName: map['pluginName'] == null ? null : (map['pluginName']! as String).input(),
      pluginType: map['pluginType'] == null ? null : (map['pluginType']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

