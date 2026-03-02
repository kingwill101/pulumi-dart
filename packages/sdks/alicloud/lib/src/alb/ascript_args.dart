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
  AScriptArgs({
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
      ascriptName: (map['ascriptName'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      extAttributeEnabled: map['extAttributeEnabled'] == null ? null : (map['extAttributeEnabled'] as bool).input(),
      extAttributes: map['extAttributes'] == null ? null : (pulumi.Input.decodeList<AScriptExtAttribute>(map['extAttributes'], (value) => AScriptExtAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      listenerId: (map['listenerId'] as String).input(),
      position: (map['position'] as String).input(),
      scriptContent: (map['scriptContent'] as String).input(),
    );
  }
}

