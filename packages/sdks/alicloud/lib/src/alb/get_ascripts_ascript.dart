// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ascripts_ascript_ext_attribute.dart';

class GetAscriptsAscript {
  /// Script identification.
  final pulumi.Input<String> ascriptId;

  /// Script name.
  final pulumi.Input<String> ascriptName;

  /// Whether scripts are enabled.
  final pulumi.Input<bool> enabled;

  /// Whether extension parameters are enabled.
  final pulumi.Input<bool> extAttributeEnabled;

  /// Extended attribute list.
  final pulumi.Input<List<GetAscriptsAscriptExtAttribute>> extAttributes;
  final pulumi.Input<String> id;

  /// Listener ID of script attribution
  final pulumi.Input<String> listenerId;
  final pulumi.Input<String> loadBalancerId;

  /// Script execution location.
  final pulumi.Input<String> position;

  /// Script content.
  final pulumi.Input<String> scriptContent;

  /// Script status.
  final pulumi.Input<String> status;

  /// Creates a new [GetAscriptsAscript].
  /// [ascriptId] Script identification.
  /// [ascriptName] Script name.
  /// [enabled] Whether scripts are enabled.
  /// [extAttributeEnabled] Whether extension parameters are enabled.
  /// [extAttributes] Extended attribute list.
  /// [id] Required.
  /// [listenerId] Listener ID of script attribution
  /// [loadBalancerId] Required.
  /// [position] Script execution location.
  /// [scriptContent] Script content.
  /// [status] Script status.
  GetAscriptsAscript({
    required this.ascriptId,
    required this.ascriptName,
    required this.enabled,
    required this.extAttributeEnabled,
    required this.extAttributes,
    required this.id,
    required this.listenerId,
    required this.loadBalancerId,
    required this.position,
    required this.scriptContent,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascriptId': ascriptId,
      'ascriptName': ascriptName,
      'enabled': enabled,
      'extAttributeEnabled': extAttributeEnabled,
      'extAttributes':
          pulumi.Input.mapInputValue<
            List<GetAscriptsAscriptExtAttribute>,
            List<Map<String, dynamic>>
          >(
            extAttributes,
            (value) =>
                pulumi.Input.encodeList<
                  GetAscriptsAscriptExtAttribute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'listenerId': listenerId,
      'loadBalancerId': loadBalancerId,
      'position': position,
      'scriptContent': scriptContent,
      'status': status,
    };
  }

  factory GetAscriptsAscript.fromMap(Map<String, dynamic> map) {
    return GetAscriptsAscript(
      ascriptId: pulumi.Input.fromValue(map['ascriptId'] as String),
      ascriptName: pulumi.Input.fromValue(map['ascriptName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      extAttributeEnabled: pulumi.Input.fromValue(
        map['extAttributeEnabled'] as bool,
      ),
      extAttributes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAscriptsAscriptExtAttribute>(
          map['extAttributes']!,
          (value) => GetAscriptsAscriptExtAttribute.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      position: pulumi.Input.fromValue(map['position'] as String),
      scriptContent: pulumi.Input.fromValue(map['scriptContent'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
