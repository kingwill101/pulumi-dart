// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ece_action_status_response.dart';

/// Reported Properties for Provision Os job
class ProvisionOsReportedPropertiesResponse {
  /// Deployment status of job.
  final pulumi.Input<EceActionStatusResponse> deploymentStatus;

  /// The percentage of the job that is complete.
  final pulumi.Input<int> percentComplete;

  /// Validation status of job.
  final pulumi.Input<EceActionStatusResponse> validationStatus;

  /// Creates a new [ProvisionOsReportedPropertiesResponse].
  /// [deploymentStatus] Deployment status of job.
  /// [percentComplete] The percentage of the job that is complete.
  /// [validationStatus] Validation status of job.
  ProvisionOsReportedPropertiesResponse({
    required this.deploymentStatus,
    required this.percentComplete,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStatus':
          pulumi.Input.mapInputValue<
            EceActionStatusResponse,
            Map<String, dynamic>
          >(deploymentStatus, (value) => value.toMap()),
      'percentComplete': percentComplete,
      'validationStatus':
          pulumi.Input.mapInputValue<
            EceActionStatusResponse,
            Map<String, dynamic>
          >(validationStatus, (value) => value.toMap()),
    };
  }

  factory ProvisionOsReportedPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProvisionOsReportedPropertiesResponse(
      deploymentStatus: pulumi.Input.fromValue(
        EceActionStatusResponse.fromMap(
          (map['deploymentStatus']! as Map).cast<String, dynamic>(),
        ),
      ),
      percentComplete: pulumi.Input.fromValue(map['percentComplete'] as int),
      validationStatus: pulumi.Input.fromValue(
        EceActionStatusResponse.fromMap(
          (map['validationStatus']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
