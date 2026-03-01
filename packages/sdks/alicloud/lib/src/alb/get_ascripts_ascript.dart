// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ascripts_ascript_ext_attribute.dart';

class GetAscriptsAscript {
  /// Script identification.
  final String ascriptId;
  /// Script name.
  final String ascriptName;
  /// Whether scripts are enabled.
  final bool enabled;
  /// Whether extension parameters are enabled.
  final bool extAttributeEnabled;
  /// Extended attribute list.
  final List<GetAscriptsAscriptExtAttribute> extAttributes;
  final String id;
  /// Listener ID of script attribution
  final String listenerId;
  final String loadBalancerId;
  /// Script execution location.
  final String position;
  /// Script content.
  final String scriptContent;
  /// Script status.
  final String status;

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
      'extAttributes': pulumi.Input.encodeList<GetAscriptsAscriptExtAttribute, Map<String, dynamic>>(extAttributes, (value) => value.toMap()),
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
      ascriptId: map['ascriptId'] as String,
      ascriptName: map['ascriptName'] as String,
      enabled: map['enabled'] as bool,
      extAttributeEnabled: map['extAttributeEnabled'] as bool,
      extAttributes: pulumi.Input.decodeList<GetAscriptsAscriptExtAttribute>(map['extAttributes'], (value) => GetAscriptsAscriptExtAttribute.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      listenerId: map['listenerId'] as String,
      loadBalancerId: map['loadBalancerId'] as String,
      position: map['position'] as String,
      scriptContent: map['scriptContent'] as String,
      status: map['status'] as String,
    );
  }
}

