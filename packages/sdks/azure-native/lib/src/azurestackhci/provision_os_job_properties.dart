// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_request.dart';

/// Represents the properties of an Azure Linux restricted operating environment Provision Os job.
class ProvisionOsJobProperties {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// Job Type supported.
  /// Expected value is 'ProvisionOs'.
  final pulumi.Input<String> jobType;
  /// Os Provisioning request.
  final pulumi.Input<ProvisioningRequest> provisioningRequest;

  /// Creates a new [ProvisionOsJobProperties].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [jobType] Job Type supported.
  /// [provisioningRequest] Os Provisioning request.
  const ProvisionOsJobProperties({
    this.deploymentMode,
    required this.jobType,
    required this.provisioningRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'jobType': jobType,
      'provisioningRequest': pulumi.Input.mapInputValue<ProvisioningRequest, Map<String, dynamic>>(provisioningRequest, (value) => value.toMap()),
    };
  }

  factory ProvisionOsJobProperties.fromMap(Map<String, dynamic> map) {
    return ProvisionOsJobProperties(
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      provisioningRequest: pulumi.Input.fromValue(ProvisioningRequest.fromMap((map['provisioningRequest']! as Map).cast<String, dynamic>())),
    );
  }
}

