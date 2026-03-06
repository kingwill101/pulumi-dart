// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ascript_ext_attribute.dart';

/// {@template pulumi_alb_a_script_ascript_args_doc}
/// The set of arguments for AScript.
/// {@endtemplate}
/// {@macro pulumi_alb_a_script_ascript_args_doc}
class AScriptArgs {
  /// AScript name.
  final pulumi.Input<String> ascriptName;
  /// Whether to PreCheck only this request
  final pulumi.Input<bool>? dryRun;
  /// Whether AScript is enabled.
  final pulumi.Input<bool>? enabled;
  /// Whether extension parameters are enabled. When ExtAttributeEnabled is true, ExtAttributes must be set.
  final pulumi.Input<bool>? extAttributeEnabled;
  /// Expand the list of attributes. When ExtAttributeEnabled is true, ExtAttributes must be set. See `ext_attributes` below.
  final pulumi.Input<List<AScriptExtAttribute>>? extAttributes;
  /// Listener ID of script attribution
  final pulumi.Input<String> listenerId;
  /// Script execution location.
  final pulumi.Input<String> position;
  /// AScript script content.
  final pulumi.Input<String> scriptContent;

  /// Creates a new [AScriptArgs].
  /// [ascriptName] AScript name.
  /// [dryRun] Whether to PreCheck only this request
  /// [enabled] Whether AScript is enabled.
  /// [extAttributeEnabled] Whether extension parameters are enabled. When ExtAttributeEnabled is true, ExtAttributes must be set.
  /// [extAttributes] Expand the list of attributes. When ExtAttributeEnabled is true, ExtAttributes must be set. See `ext_attributes` below.
  /// [listenerId] Listener ID of script attribution
  /// [position] Script execution location.
  /// [scriptContent] AScript script content.
  const AScriptArgs({
    required this.ascriptName,
    this.dryRun,
    this.enabled,
    this.extAttributeEnabled,
    this.extAttributes,
    required this.listenerId,
    required this.position,
    required this.scriptContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascriptName': ascriptName,
      'dryRun': ?dryRun,
      'enabled': ?enabled,
      'extAttributeEnabled': ?extAttributeEnabled,
      'extAttributes': ?pulumi.Input.mapOptionalInputValue<List<AScriptExtAttribute>, List<Map<String, dynamic>>>(extAttributes, (value) => pulumi.Input.encodeList<AScriptExtAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listenerId': listenerId,
      'position': position,
      'scriptContent': scriptContent,
    };
  }

  factory AScriptArgs.fromMap(Map<String, dynamic> map) {
    return AScriptArgs(
      ascriptName: pulumi.Input.fromValue(map['ascriptName'] as String),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extAttributeEnabled: (() { final guardedValue = map['extAttributeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extAttributes: (() { final guardedValue = map['extAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AScriptExtAttribute>(guardedValue, (value) => AScriptExtAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      position: pulumi.Input.fromValue(map['position'] as String),
      scriptContent: pulumi.Input.fromValue(map['scriptContent'] as String),
    );
  }
}

