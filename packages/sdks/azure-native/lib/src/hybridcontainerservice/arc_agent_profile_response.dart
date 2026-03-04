// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Arc Agent properties for the Provisioned clusters.
class ArcAgentProfileResponse {
  /// Indicates whether the Arc agents on the provisioned clusters be upgraded automatically to the latest version. Defaults to Enabled.
  final pulumi.Input<String>? agentAutoUpgrade;

  /// Version of the Arc agents to be installed on the provisioned Provisioned cluster resource
  final pulumi.Input<String>? agentVersion;

  /// Creates a new [ArcAgentProfileResponse].
  /// [agentAutoUpgrade] Indicates whether the Arc agents on the provisioned clusters be upgraded automatically to the latest version. Defaults to Enabled.
  /// [agentVersion] Version of the Arc agents to be installed on the provisioned Provisioned cluster resource
  ArcAgentProfileResponse({this.agentAutoUpgrade, this.agentVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAutoUpgrade': ?agentAutoUpgrade,
      'agentVersion': ?agentVersion,
    };
  }

  factory ArcAgentProfileResponse.fromMap(Map<String, dynamic> map) {
    return ArcAgentProfileResponse(
      agentAutoUpgrade: (() {
        final guardedValue = map['agentAutoUpgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      agentVersion: (() {
        final guardedValue = map['agentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
