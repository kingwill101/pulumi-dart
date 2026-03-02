// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node customization script
class NodeCustomizationScript {
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

  /// Creates a new [NodeCustomizationScript].
  /// [executionPoint] The stage at which the script is executed.
  /// [name] The name for the customization script.
  /// [rebootAfter] Whether the node should reboot after successful script execution.
  /// [script] The script content to be executed in plain text. Do not include secrets.
  /// [scriptType] The runtime environment for the script (e.g. Bash).
  NodeCustomizationScript({
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

  factory NodeCustomizationScript.fromMap(Map<String, dynamic> map) {
    return NodeCustomizationScript(
      executionPoint: (map['executionPoint'] as String).input(),
      name: (map['name'] as String).input(),
      rebootAfter: map['rebootAfter'] == null ? null : (map['rebootAfter']! as bool).input(),
      script: map['script'] == null ? null : (map['script']! as String).input(),
      scriptType: (map['scriptType'] as String).input(),
    );
  }
}

