// ignore_for_file: unused_element, unnecessary_cast


/// Node customization script
class NodeCustomizationScriptResponse {
  /// The stage at which the script is executed.
  /// Specifying `NodeImageBuildTime` will ensure changes are persisted into the node image.
  final String executionPoint;
  /// The name for the customization script.
  /// Must be unique within the node customization resource.
  /// Can only contain lowercase alphanumeric,'-' or '.' characters.
  final String name;
  /// Whether the node should reboot after successful script execution.
  final bool? rebootAfter;
  /// The script content to be executed in plain text. Do not include secrets.
  final String? script;
  /// The runtime environment for the script (e.g. Bash).
  final String scriptType;

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
      executionPoint: map['executionPoint'] as String,
      name: map['name'] as String,
      rebootAfter: map['rebootAfter'] == null ? null : map['rebootAfter'] as bool,
      script: map['script'] == null ? null : map['script'] as String,
      scriptType: map['scriptType'] as String,
    );
  }
}

