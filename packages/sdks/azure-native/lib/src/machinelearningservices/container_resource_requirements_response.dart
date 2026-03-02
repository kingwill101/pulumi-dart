// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_resource_settings_response.dart';

/// Resource requirements for each container instance within an online deployment.
class ContainerResourceRequirementsResponse {
  /// Container resource limit info:
  final pulumi.Input<ContainerResourceSettingsResponse>? containerResourceLimits;
  /// Container resource request info:
  final pulumi.Input<ContainerResourceSettingsResponse>? containerResourceRequests;

  /// Creates a new [ContainerResourceRequirementsResponse].
  /// [containerResourceLimits] Container resource limit info:
  /// [containerResourceRequests] Container resource request info:
  ContainerResourceRequirementsResponse({
    this.containerResourceLimits,
    this.containerResourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerResourceLimits': ?pulumi.Input.mapOptionalInputValue<ContainerResourceSettingsResponse, Map<String, dynamic>>(containerResourceLimits, (value) => value.toMap()),
      'containerResourceRequests': ?pulumi.Input.mapOptionalInputValue<ContainerResourceSettingsResponse, Map<String, dynamic>>(containerResourceRequests, (value) => value.toMap()),
    };
  }

  factory ContainerResourceRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResourceRequirementsResponse(
      containerResourceLimits: map['containerResourceLimits'] == null ? null : (ContainerResourceSettingsResponse.fromMap((map['containerResourceLimits'] as Map).cast<String, dynamic>())).input(),
      containerResourceRequests: map['containerResourceRequests'] == null ? null : (ContainerResourceSettingsResponse.fromMap((map['containerResourceRequests'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

