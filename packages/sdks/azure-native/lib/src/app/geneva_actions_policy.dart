// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geneva_action_config.dart';

/// Geneva Actions policy configuration for Agent Space
class GenevaActionsPolicy {
  /// ACIS (Azure Container Instance Service) endpoint URL
  final pulumi.Input<String?>? acisEndpoint;
  /// Collection of allowed Geneva actions
  final pulumi.Input<List<GenevaActionConfig>?>? allowedActions;
  /// Authentication mode for Geneva Actions
  final pulumi.Input<dynamic>? authenticationMode;
  /// Subject name of the certificate used for authentication
  final pulumi.Input<String?>? certificateSubjectName;
  /// Client ID for authentication
  final pulumi.Input<String?>? clientId;
  /// Name of the Geneva extension
  final pulumi.Input<String> extensionName;

  /// Creates a new [GenevaActionsPolicy].
  /// [acisEndpoint] ACIS (Azure Container Instance Service) endpoint URL
  /// [allowedActions] Collection of allowed Geneva actions
  /// [authenticationMode] Authentication mode for Geneva Actions
  /// [certificateSubjectName] Subject name of the certificate used for authentication
  /// [clientId] Client ID for authentication
  /// [extensionName] Name of the Geneva extension
  const GenevaActionsPolicy({
    this.acisEndpoint,
    this.allowedActions,
    this.authenticationMode,
    this.certificateSubjectName,
    this.clientId,
    required this.extensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acisEndpoint': ?acisEndpoint,
      'allowedActions': ?pulumi.Input.mapOptionalInputValue<List<GenevaActionConfig>, List<Map<String, dynamic>>>(allowedActions, (value) => pulumi.Input.encodeList<GenevaActionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authenticationMode': ?authenticationMode,
      'certificateSubjectName': ?certificateSubjectName,
      'clientId': ?clientId,
      'extensionName': extensionName,
    };
  }

  factory GenevaActionsPolicy.fromMap(Map<String, dynamic> map) {
    return GenevaActionsPolicy(
      acisEndpoint: (() { final guardedValue = map['acisEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedActions: (() { final guardedValue = map['allowedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GenevaActionConfig>(guardedValue, (value) => GenevaActionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      certificateSubjectName: (() { final guardedValue = map['certificateSubjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
    );
  }
}
