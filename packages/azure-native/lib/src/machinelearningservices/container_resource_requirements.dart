// ignore_for_file: unused_element, unnecessary_cast

import 'container_resource_settings.dart';

/// Resource requirements for each container instance within an online deployment.
class ContainerResourceRequirements {
  /// Container resource limit info:
  final ContainerResourceSettings? containerResourceLimits;
  /// Container resource request info:
  final ContainerResourceSettings? containerResourceRequests;

  /// Creates a new [ContainerResourceRequirements].
  /// [containerResourceLimits] Container resource limit info:
  /// [containerResourceRequests] Container resource request info:
  ContainerResourceRequirements({
    this.containerResourceLimits,
    this.containerResourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResourceLimits': ?containerResourceLimits == null ? null : containerResourceLimits!.toMap(),
      'containerResourceRequests': ?containerResourceRequests == null ? null : containerResourceRequests!.toMap(),
    };
  }

  factory ContainerResourceRequirements.fromMap(Map<String, dynamic> map) {
    return ContainerResourceRequirements(
      containerResourceLimits: map['containerResourceLimits'] == null ? null : ContainerResourceSettings.fromMap((map['containerResourceLimits'] as Map).cast<String, dynamic>()),
      containerResourceRequests: map['containerResourceRequests'] == null ? null : ContainerResourceSettings.fromMap((map['containerResourceRequests'] as Map).cast<String, dynamic>()),
    );
  }
}

