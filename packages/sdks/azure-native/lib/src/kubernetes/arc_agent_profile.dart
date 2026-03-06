// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_component.dart';

/// Defines the Arc Agent properties for the clusters.
class ArcAgentProfile {
  /// Indicates whether the Arc agents on the be upgraded automatically to the latest version. Defaults to Enabled.
  final pulumi.Input<String>? agentAutoUpgrade;
  /// Version of the Arc agents to be installed on the cluster resource
  final pulumi.Input<String>? desiredAgentVersion;
  /// List of system extensions can be installed on the cluster resource.
  final pulumi.Input<List<SystemComponent>>? systemComponents;

  /// Creates a new [ArcAgentProfile].
  /// [agentAutoUpgrade] Indicates whether the Arc agents on the be upgraded automatically to the latest version. Defaults to Enabled.
  /// [desiredAgentVersion] Version of the Arc agents to be installed on the cluster resource
  /// [systemComponents] List of system extensions can be installed on the cluster resource.
  const ArcAgentProfile({
    this.agentAutoUpgrade,
    this.desiredAgentVersion,
    this.systemComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAutoUpgrade': ?agentAutoUpgrade,
      'desiredAgentVersion': ?desiredAgentVersion,
      'systemComponents': ?pulumi.Input.mapOptionalInputValue<List<SystemComponent>, List<Map<String, dynamic>>>(systemComponents, (value) => pulumi.Input.encodeList<SystemComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ArcAgentProfile.fromMap(Map<String, dynamic> map) {
    return ArcAgentProfile(
      agentAutoUpgrade: (() { final guardedValue = map['agentAutoUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredAgentVersion: (() { final guardedValue = map['desiredAgentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemComponents: (() { final guardedValue = map['systemComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemComponent>(guardedValue, (value) => SystemComponent.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

