// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geneva_action_config_response.dart';

/// Geneva Actions policy configuration for Agent Space
class GenevaActionsPolicyResponse {
  /// ACIS (Azure Container Instance Service) endpoint URL
  final pulumi.Input<String?>? acisEndpoint;
  /// Collection of allowed Geneva actions
  final pulumi.Input<List<GenevaActionConfigResponse>?>? allowedActions;
  /// Authentication mode for Geneva Actions
  final pulumi.Input<String?>? authenticationMode;
  /// Subject alternative name of the certificate used for authentication
  final pulumi.Input<String> certificateSubjectAlternativeName;
  /// Subject name of the certificate used for authentication
  final pulumi.Input<String?>? certificateSubjectName;
  /// Client ID for authentication
  final pulumi.Input<String?>? clientId;
  /// Name of the Geneva extension
  final pulumi.Input<String> extensionName;

  /// Creates a new [GenevaActionsPolicyResponse].
  /// [acisEndpoint] ACIS (Azure Container Instance Service) endpoint URL
  /// [allowedActions] Collection of allowed Geneva actions
  /// [authenticationMode] Authentication mode for Geneva Actions
  /// [certificateSubjectAlternativeName] Subject alternative name of the certificate used for authentication
  /// [certificateSubjectName] Subject name of the certificate used for authentication
  /// [clientId] Client ID for authentication
  /// [extensionName] Name of the Geneva extension
  const GenevaActionsPolicyResponse({
    this.acisEndpoint,
    this.allowedActions,
    this.authenticationMode,
    required this.certificateSubjectAlternativeName,
    this.certificateSubjectName,
    this.clientId,
    required this.extensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acisEndpoint': ?acisEndpoint,
      'allowedActions': ?pulumi.Input.mapOptionalInputValue<List<GenevaActionConfigResponse>, List<Map<String, dynamic>>>(allowedActions, (value) => pulumi.Input.encodeList<GenevaActionConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authenticationMode': ?authenticationMode,
      'certificateSubjectAlternativeName': certificateSubjectAlternativeName,
      'certificateSubjectName': ?certificateSubjectName,
      'clientId': ?clientId,
      'extensionName': extensionName,
    };
  }

  factory GenevaActionsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return GenevaActionsPolicyResponse(
      acisEndpoint: (() { final guardedValue = map['acisEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedActions: (() { final guardedValue = map['allowedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GenevaActionConfigResponse>(guardedValue, (value) => GenevaActionConfigResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateSubjectAlternativeName: pulumi.Input.fromValue(map['certificateSubjectAlternativeName'] as String),
      certificateSubjectName: (() { final guardedValue = map['certificateSubjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
    );
  }
}
