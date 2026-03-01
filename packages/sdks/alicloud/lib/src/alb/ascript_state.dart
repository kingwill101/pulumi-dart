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
  AScriptState({
    pulumi.Output<String>? ascriptName,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? extAttributeEnabled,
    pulumi.Output<List<AScriptExtAttribute>>? extAttributes,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? position,
    pulumi.Output<String>? scriptContent,
    pulumi.Output<String>? status,
  }) :
      ascriptName = pulumi.Input.asOptionalInput<String>(ascriptName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      extAttributeEnabled = pulumi.Input.asOptionalInput<bool>(extAttributeEnabled),
      extAttributes = pulumi.Input.asOptionalInput<List<AScriptExtAttribute>>(extAttributes),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      position = pulumi.Input.asOptionalInput<String>(position),
      scriptContent = pulumi.Input.asOptionalInput<String>(scriptContent),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ascriptName: map['ascriptName'] == null ? null : pulumi.Output.create<String>(map['ascriptName'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      extAttributeEnabled: map['extAttributeEnabled'] == null ? null : pulumi.Output.create<bool>(map['extAttributeEnabled'] as bool),
      extAttributes: map['extAttributes'] == null ? null : pulumi.Output.create<List<AScriptExtAttribute>>(pulumi.Input.decodeList<AScriptExtAttribute>(map['extAttributes'], (value) => AScriptExtAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      position: map['position'] == null ? null : pulumi.Output.create<String>(map['position'] as String),
      scriptContent: map['scriptContent'] == null ? null : pulumi.Output.create<String>(map['scriptContent'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

