// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ascript_ext_attribute.dart';

/// Input properties used for looking up and filtering AScript resources.
class AScriptState {
  /// AScript name.
  final pulumi.Input<String>? ascriptName;
  /// Whether to PreCheck only this request
  final pulumi.Input<bool>? dryRun;
  /// Whether AScript is enabled.
  final pulumi.Input<bool>? enabled;
  /// Whether extension parameters are enabled. When ExtAttributeEnabled is true, ExtAttributes must be set.
  final pulumi.Input<bool>? extAttributeEnabled;
  /// Expand the list of attributes. When ExtAttributeEnabled is true, ExtAttributes must be set. See `ext_attributes` below.
  final pulumi.Input<List<AScriptExtAttribute>>? extAttributes;
  /// Listener ID of script attribution
  final pulumi.Input<String>? listenerId;
  /// Script execution location.
  final pulumi.Input<String>? position;
  /// AScript script content.
  final pulumi.Input<String>? scriptContent;
  /// Script status
  final pulumi.Input<String>? status;

  /// Creates a new [AScriptState].
  /// [ascriptName] AScript name.
  /// [dryRun] Whether to PreCheck only this request
  /// [enabled] Whether AScript is enabled.
  /// [extAttributeEnabled] Whether extension parameters are enabled. When ExtAttributeEnabled is true, ExtAttributes must be set.
  /// [extAttributes] Expand the list of attributes. When ExtAttributeEnabled is true, ExtAttributes must be set. See `ext_attributes` below.
  /// [listenerId] Listener ID of script attribution
  /// [position] Script execution location.
  /// [scriptContent] AScript script content.
  /// [status] Script status
  const AScriptState({
    this.ascriptName,
    this.dryRun,
    this.enabled,
    this.extAttributeEnabled,
    this.extAttributes,
    this.listenerId,
    this.position,
    this.scriptContent,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascriptName': ?ascriptName,
      'dryRun': ?dryRun,
      'enabled': ?enabled,
      'extAttributeEnabled': ?extAttributeEnabled,
      'extAttributes': ?pulumi.Input.mapOptionalInputValue<List<AScriptExtAttribute>, List<Map<String, dynamic>>>(extAttributes, (value) => pulumi.Input.encodeList<AScriptExtAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listenerId': ?listenerId,
      'position': ?position,
      'scriptContent': ?scriptContent,
      'status': ?status,
    };
  }

  factory AScriptState.fromMap(Map<String, dynamic> map) {
    return AScriptState(
      ascriptName: (() { final guardedValue = map['ascriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extAttributeEnabled: (() { final guardedValue = map['extAttributeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extAttributes: (() { final guardedValue = map['extAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AScriptExtAttribute>(guardedValue, (value) => AScriptExtAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptContent: (() { final guardedValue = map['scriptContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

