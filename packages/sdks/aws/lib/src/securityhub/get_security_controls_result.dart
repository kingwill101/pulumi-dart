// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_controls_security_control_definition.dart';

/// Result data returned by getSecurityControls.
class GetSecurityControlsResult {
  final String region;
  /// List of controls. See below for details.
  final List<GetSecurityControlsSecurityControlDefinition> securityControlDefinitions;
  final String? standardsArn;

  /// Creates a new [GetSecurityControlsResult].
  /// [region] Required.
  /// [securityControlDefinitions] List of controls. See below for details.
  /// [standardsArn] Optional.
  const GetSecurityControlsResult({
    required this.region,
    required this.securityControlDefinitions,
    this.standardsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'securityControlDefinitions': pulumi.Input.encodeList<GetSecurityControlsSecurityControlDefinition, Map<String, dynamic>>(securityControlDefinitions, (value) => value.toMap()),
      'standardsArn': ?standardsArn,
    };
  }

  factory GetSecurityControlsResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityControlsResult(
      region: map['region'] as String,
      securityControlDefinitions: pulumi.Input.decodeList<GetSecurityControlsSecurityControlDefinition>(map['securityControlDefinitions']!, (value) => GetSecurityControlsSecurityControlDefinition.fromMap((value as Map).cast<String, dynamic>())),
      standardsArn: (() { final guardedValue = map['standardsArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
