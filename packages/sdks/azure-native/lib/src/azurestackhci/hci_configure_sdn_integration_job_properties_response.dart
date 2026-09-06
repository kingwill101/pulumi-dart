// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_reported_properties_response.dart';

/// Properties for configuring SDN integration intent for the cluster.
class HciConfigureSdnIntegrationJobPropertiesResponse {
  /// Deployment mode to trigger job.
  final pulumi.Input<String?>? deploymentMode;
  /// The UTC date and time at which the job completed.
  final pulumi.Input<String> endTimeUtc;
  /// Unique, immutable job id.
  final pulumi.Input<String> jobId;
  /// ClusterJob Type supported.
  /// Expected value is 'ConfigureSdnIntegration'.
  final pulumi.Input<String> jobType;
  /// Job provisioning state
  final pulumi.Input<String> provisioningState;
  /// Reported properties for job
  final pulumi.Input<JobReportedPropertiesResponse> reportedProperties;
  /// Defines the customer's intent for configuring SDN integration
  final pulumi.Input<String> sdnIntegrationIntent;
  /// A string identifier used to construct the Network Controller (NC) REST resource name. This prefix helps group and distinguish SDN-managed network components and must follow specific formatting rules.
  final pulumi.Input<String?>? sdnPrefix;
  /// The UTC date and time at which the job started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of Cluster job.
  final pulumi.Input<String> status;

  /// Creates a new [HciConfigureSdnIntegrationJobPropertiesResponse].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [endTimeUtc] The UTC date and time at which the job completed.
  /// [jobId] Unique, immutable job id.
  /// [jobType] ClusterJob Type supported.
  /// [provisioningState] Job provisioning state
  /// [reportedProperties] Reported properties for job
  /// [sdnIntegrationIntent] Defines the customer's intent for configuring SDN integration
  /// [sdnPrefix] A string identifier used to construct the Network Controller (NC) REST resource name. This prefix helps group and distinguish SDN-managed network components and must follow specific formatting rules.
  /// [startTimeUtc] The UTC date and time at which the job started.
  /// [status] Status of Cluster job.
  HciConfigureSdnIntegrationJobPropertiesResponse({
    pulumi.Input<String?>? deploymentMode,
    required this.endTimeUtc,
    required this.jobId,
    required this.jobType,
    required this.provisioningState,
    required this.reportedProperties,
    required this.sdnIntegrationIntent,
    this.sdnPrefix,
    required this.startTimeUtc,
    required this.status,
  }) : deploymentMode = deploymentMode ?? pulumi.Input.fromValue('Deploy');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'endTimeUtc': endTimeUtc,
      'jobId': jobId,
      'jobType': jobType,
      'provisioningState': provisioningState,
      'reportedProperties': pulumi.Input.mapInputValue<JobReportedPropertiesResponse, Map<String, dynamic>>(reportedProperties, (value) => value.toMap()),
      'sdnIntegrationIntent': sdnIntegrationIntent,
      'sdnPrefix': ?sdnPrefix,
      'startTimeUtc': startTimeUtc,
      'status': status,
    };
  }

  factory HciConfigureSdnIntegrationJobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciConfigureSdnIntegrationJobPropertiesResponse(
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTimeUtc: pulumi.Input.fromValue(map['endTimeUtc'] as String),
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      reportedProperties: pulumi.Input.fromValue(JobReportedPropertiesResponse.fromMap((map['reportedProperties']! as Map).cast<String, dynamic>())),
      sdnIntegrationIntent: pulumi.Input.fromValue(map['sdnIntegrationIntent'] as String),
      sdnPrefix: (() { final guardedValue = map['sdnPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
