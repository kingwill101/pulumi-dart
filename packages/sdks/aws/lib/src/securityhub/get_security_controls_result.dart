// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_controls_security_control_definition.dart';

/// Result data returned by getSecurityControls.
class GetSecurityControlsResult {
  final String? region;
  /// List of controls. See below for details.
  final List<GetSecurityControlsSecurityControlDefinition>? securityControlDefinitions;
  final String? standardsArn;

  /// Creates a new [GetSecurityControlsResult].
  /// [region] Optional.
  /// [securityControlDefinitions] List of controls. See below for details.
  /// [standardsArn] Optional.
  const GetSecurityControlsResult({
    this.region,
    this.securityControlDefinitions,
    this.standardsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'securityControlDefinitions': ?(() { final guardedValue = securityControlDefinitions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityControlsSecurityControlDefinition, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'standardsArn': ?standardsArn,
    };
  }

  factory GetSecurityControlsResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityControlsResult(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityControlDefinitions: (() { final guardedValue = map['securityControlDefinitions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityControlsSecurityControlDefinition>(guardedValue, (value) => GetSecurityControlsSecurityControlDefinition.fromMap((value as Map).cast<String, dynamic>())); })(),
      standardsArn: (() { final guardedValue = map['standardsArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
