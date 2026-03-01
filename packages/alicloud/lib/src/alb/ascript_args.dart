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
    required String ascriptName,
    bool? dryRun,
    bool? enabled,
    bool? extAttributeEnabled,
    List<AScriptExtAttribute>? extAttributes,
    required String listenerId,
    required String position,
    required String scriptContent,
  }) :
      ascriptName = pulumi.Input.asInput<String>(ascriptName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      extAttributeEnabled = pulumi.Input.asOptionalInput<bool>(extAttributeEnabled),
      extAttributes = pulumi.Input.asOptionalInput<List<AScriptExtAttribute>>(extAttributes),
      listenerId = pulumi.Input.asInput<String>(listenerId),
      position = pulumi.Input.asInput<String>(position),
      scriptContent = pulumi.Input.asInput<String>(scriptContent);

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
      ascriptName: map['ascriptName'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      extAttributeEnabled: map['extAttributeEnabled'] == null ? null : map['extAttributeEnabled'] as bool,
      extAttributes: map['extAttributes'] == null ? null : pulumi.Input.decodeList<AScriptExtAttribute>(map['extAttributes'], (value) => AScriptExtAttribute.fromMap((value as Map).cast<String, dynamic>())),
      listenerId: map['listenerId'] as String,
      position: map['position'] as String,
      scriptContent: map['scriptContent'] as String,
    );
  }
}

