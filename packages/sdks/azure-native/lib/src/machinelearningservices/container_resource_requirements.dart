// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resource_settings.dart';

/// Resource requirements for each container instance within an online deployment.
class ContainerResourceRequirements {
  /// Container resource limit info:
  final pulumi.Input<ContainerResourceSettings>? containerResourceLimits;
  /// Container resource request info:
  final pulumi.Input<ContainerResourceSettings>? containerResourceRequests;

  /// Creates a new [ContainerResourceRequirements].
  /// [containerResourceLimits] Container resource limit info:
  /// [containerResourceRequests] Container resource request info:
  const ContainerResourceRequirements({
    this.containerResourceLimits,
    this.containerResourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResourceLimits': ?pulumi.Input.mapOptionalInputValue<ContainerResourceSettings, Map<String, dynamic>>(containerResourceLimits, (value) => value.toMap()),
      'containerResourceRequests': ?pulumi.Input.mapOptionalInputValue<ContainerResourceSettings, Map<String, dynamic>>(containerResourceRequests, (value) => value.toMap()),
    };
  }

  factory ContainerResourceRequirements.fromMap(Map<String, dynamic> map) {
    return ContainerResourceRequirements(
      containerResourceLimits: (() { final guardedValue = map['containerResourceLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerResourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerResourceRequests: (() { final guardedValue = map['containerResourceRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerResourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
