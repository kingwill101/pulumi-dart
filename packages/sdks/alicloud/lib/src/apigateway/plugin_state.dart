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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? pluginData,
    pulumi.Output<String>? pluginName,
    pulumi.Output<String>? pluginType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      pluginData = pulumi.Input.asOptionalInput<String>(pluginData),
      pluginName = pulumi.Input.asOptionalInput<String>(pluginName),
      pluginType = pulumi.Input.asOptionalInput<String>(pluginType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      pluginData: map['pluginData'] == null ? null : pulumi.Output.create<String>(map['pluginData'] as String),
      pluginName: map['pluginName'] == null ? null : pulumi.Output.create<String>(map['pluginName'] as String),
      pluginType: map['pluginType'] == null ? null : pulumi.Output.create<String>(map['pluginType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

