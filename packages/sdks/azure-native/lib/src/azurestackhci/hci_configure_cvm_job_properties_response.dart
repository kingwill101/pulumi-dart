// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_reported_properties_response.dart';

/// Defines the customer's intent for updating confidential VM properties
class HciConfigureCvmJobPropertiesResponse {
  /// Defines the customer's intent for updating confidential VM properties
  final pulumi.Input<String> confidentialVmIntent;
  /// Deployment mode to trigger job.
  final pulumi.Input<String?>? deploymentMode;
  /// The UTC date and time at which the job completed.
  final pulumi.Input<String> endTimeUtc;
  /// Unique, immutable job id.
  final pulumi.Input<String> jobId;
  /// ClusterJob Type supported.
  /// Expected value is 'ConfigureCVM'.
  final pulumi.Input<String> jobType;
  /// Job provisioning state
  final pulumi.Input<String> provisioningState;
  /// Reported properties for job
  final pulumi.Input<JobReportedPropertiesResponse> reportedProperties;
  /// The UTC date and time at which the job started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of Cluster job.
  final pulumi.Input<String> status;

  /// Creates a new [HciConfigureCvmJobPropertiesResponse].
  /// [confidentialVmIntent] Defines the customer's intent for updating confidential VM properties
  /// [deploymentMode] Deployment mode to trigger job.
  /// [endTimeUtc] The UTC date and time at which the job completed.
  /// [jobId] Unique, immutable job id.
  /// [jobType] ClusterJob Type supported.
  /// [provisioningState] Job provisioning state
  /// [reportedProperties] Reported properties for job
  /// [startTimeUtc] The UTC date and time at which the job started.
  /// [status] Status of Cluster job.
  HciConfigureCvmJobPropertiesResponse({
    required this.confidentialVmIntent,
    pulumi.Input<String?>? deploymentMode,
    required this.endTimeUtc,
    required this.jobId,
    required this.jobType,
    required this.provisioningState,
    required this.reportedProperties,
    required this.startTimeUtc,
    required this.status,
  }) : deploymentMode = deploymentMode ?? pulumi.Input.fromValue('Deploy');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialVmIntent': confidentialVmIntent,
      'deploymentMode': ?deploymentMode,
      'endTimeUtc': endTimeUtc,
      'jobId': jobId,
      'jobType': jobType,
      'provisioningState': provisioningState,
      'reportedProperties': pulumi.Input.mapInputValue<JobReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
      'startTimeUtc': startTimeUtc,
      'status': status,
    };
  }

  factory HciConfigureCvmJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciConfigureCvmJobPropertiesResponse(
      confidentialVmIntent: pulumi.Input.fromValue(map['confidentialVmIntent'] as String),
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTimeUtc: pulumi.Input.fromValue(map['endTimeUtc'] as String),
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      reportedProperties: pulumi.Input.fromValue(JobReportedPropertiesResponse.fromMap((map['reportedProperties']! as Map).cast<String, dynamic>())),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
