// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node customization script
class NodeCustomizationScriptResponse {
  /// The stage at which the script is executed.
  /// Specifying `NodeImageBuildTime` will ensure changes are persisted into the node image.
  final pulumi.Input<String> executionPoint;
  /// The name for the customization script.
  /// Must be unique within the node customization resource.
  /// Can only contain lowercase alphanumeric,'-' or '.' characters.
  final pulumi.Input<String> name;
  /// Whether the node should reboot after successful script execution.
  final pulumi.Input<bool>? rebootAfter;
  /// The script content to be executed in plain text. Do not include secrets.
  final pulumi.Input<String>? script;
  /// The runtime environment for the script (e.g. Bash).
  final pulumi.Input<String> scriptType;

  /// Creates a new [NodeCustomizationScriptResponse].
  /// [executionPoint] The stage at which the script is executed.
  /// [name] The name for the customization script.
  /// [rebootAfter] Whether the node should reboot after successful script execution.
  /// [script] The script content to be executed in plain text. Do not include secrets.
  /// [scriptType] The runtime environment for the script (e.g. Bash).
  NodeCustomizationScriptResponse({
    required this.executionPoint,
    required this.name,
    this.rebootAfter,
    this.script,
    required this.scriptType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionPoint': executionPoint,
      'name': name,
      'rebootAfter': ?rebootAfter,
      'script': ?script,
      'scriptType': scriptType,
    };
  }

  factory NodeCustomizationScriptResponse.fromMap(Map<String, dynamic> map) {
    return NodeCustomizationScriptResponse(
      executionPoint: pulumi.Input.fromValue(map['executionPoint'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      rebootAfter: (() { final guardedValue = map['rebootAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptType: pulumi.Input.fromValue(map['scriptType'] as String),
    );
  }
}

