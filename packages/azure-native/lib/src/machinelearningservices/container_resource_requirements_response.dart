// ignore_for_file: unused_element, unnecessary_cast

import 'container_resource_settings_response.dart';

/// Resource requirements for each container instance within an online deployment.
class ContainerResourceRequirementsResponse {
  /// Container resource limit info:
  final ContainerResourceSettingsResponse? containerResourceLimits;
  /// Container resource request info:
  final ContainerResourceSettingsResponse? containerResourceRequests;

  /// Creates a new [ContainerResourceRequirementsResponse].
  /// [containerResourceLimits] Container resource limit info:
  /// [containerResourceRequests] Container resource request info:
  ContainerResourceRequirementsResponse({
    this.containerResourceLimits,
    this.containerResourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResourceLimits': ?containerResourceLimits == null ? null : containerResourceLimits!.toMap(),
      'containerResourceRequests': ?containerResourceRequests == null ? null : containerResourceRequests!.toMap(),
    };
  }

  factory ContainerResourceRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResourceRequirementsResponse(
      containerResourceLimits: map['containerResourceLimits'] == null ? null : ContainerResourceSettingsResponse.fromMap((map['containerResourceLimits'] as Map).cast<String, dynamic>()),
      containerResourceRequests: map['containerResourceRequests'] == null ? null : ContainerResourceSettingsResponse.fromMap((map['containerResourceRequests'] as Map).cast<String, dynamic>()),
    );
  }
}

