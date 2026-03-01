// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_incident_details_response.dart';
import 'connectivity_response.dart';
import 'error_detail_properties_response.dart';
import 'performance_response.dart';
import 'workload_response.dart';

/// Workload impact properties
class WorkloadImpactPropertiesResponse {
  /// Additional fields related to impact, applicable fields per resource type are list under /impactCategories API
  final dynamic additionalProperties;
  /// The ARM correlation ids, this is important field for control plane related impacts
  final List<String>? armCorrelationIds;
  /// Client incident details ex: incidentId , incident source
  final ClientIncidentDetailsResponse? clientIncidentDetails;
  /// Degree of confidence on the impact being a platform issue
  final String? confidenceLevel;
  /// Details about connectivity issue. Applicable when root resource causing the issue is not identified. For example, when a VM is impacted due to a network issue, the impacted resource is identified as the VM, but the root cause is the network. In such cases, the connectivity field will have the details about the network issue
  final ConnectivityResponse? connectivity;
  /// Time at which impact has ended
  final String? endDateTime;
  /// ARM error code and error message associated with the impact
  final ErrorDetailPropertiesResponse? errorDetails;
  /// Category of the impact,  details can found from /impactCategories API
  final String impactCategory;
  /// A detailed description of the impact
  final String? impactDescription;
  /// Use this field to group impacts
  final String? impactGroupId;
  /// Unique ID of the impact (UUID)
  final String impactUniqueId;
  /// Azure resource id of the impacted resource
  final String impactedResourceId;
  /// Details about performance issue. Applicable for performance impacts.
  final List<PerformanceResponse>? performance;
  /// Resource provisioning state.
  final String provisioningState;
  /// Time at which impact is reported
  final String reportedTimeUtc;
  /// Time at which impact was observed
  final String startDateTime;
  /// Information about the impacted workload
  final WorkloadResponse? workload;

  /// Creates a new [WorkloadImpactPropertiesResponse].
  /// [additionalProperties] Additional fields related to impact, applicable fields per resource type are list under /impactCategories API
  /// [armCorrelationIds] The ARM correlation ids, this is important field for control plane related impacts
  /// [clientIncidentDetails] Client incident details ex: incidentId , incident source
  /// [confidenceLevel] Degree of confidence on the impact being a platform issue
  /// [connectivity] Details about connectivity issue. Applicable when root resource causing the issue is not identified. For example, when a VM is impacted due to a network issue, the impacted resource is identified as the VM, but the root cause is the network. In such cases, the connectivity field will have the details about the network issue
  /// [endDateTime] Time at which impact has ended
  /// [errorDetails] ARM error code and error message associated with the impact
  /// [impactCategory] Category of the impact,  details can found from /impactCategories API
  /// [impactDescription] A detailed description of the impact
  /// [impactGroupId] Use this field to group impacts
  /// [impactUniqueId] Unique ID of the impact (UUID)
  /// [impactedResourceId] Azure resource id of the impacted resource
  /// [performance] Details about performance issue. Applicable for performance impacts.
  /// [provisioningState] Resource provisioning state.
  /// [reportedTimeUtc] Time at which impact is reported
  /// [startDateTime] Time at which impact was observed
  /// [workload] Information about the impacted workload
  WorkloadImpactPropertiesResponse({
    this.additionalProperties,
    this.armCorrelationIds,
    this.clientIncidentDetails,
    this.confidenceLevel,
    this.connectivity,
    this.endDateTime,
    this.errorDetails,
    required this.impactCategory,
    this.impactDescription,
    this.impactGroupId,
    required this.impactUniqueId,
    required this.impactedResourceId,
    this.performance,
    required this.provisioningState,
    required this.reportedTimeUtc,
    required this.startDateTime,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'armCorrelationIds': ?armCorrelationIds,
      'clientIncidentDetails': ?clientIncidentDetails == null ? null : clientIncidentDetails!.toMap(),
      'confidenceLevel': ?confidenceLevel,
      'connectivity': ?connectivity == null ? null : connectivity!.toMap(),
      'endDateTime': ?endDateTime,
      'errorDetails': ?errorDetails == null ? null : errorDetails!.toMap(),
      'impactCategory': impactCategory,
      'impactDescription': ?impactDescription,
      'impactGroupId': ?impactGroupId,
      'impactUniqueId': impactUniqueId,
      'impactedResourceId': impactedResourceId,
      'performance': ?performance == null ? null : pulumi.Input.encodeList<PerformanceResponse, Map<String, dynamic>>(performance!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'reportedTimeUtc': reportedTimeUtc,
      'startDateTime': startDateTime,
      'workload': ?workload == null ? null : workload!.toMap(),
    };
  }

  factory WorkloadImpactPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadImpactPropertiesResponse(
      additionalProperties: map['additionalProperties'] == null ? null : map['additionalProperties'],
      armCorrelationIds: map['armCorrelationIds'] == null ? null : (map['armCorrelationIds'] as List).cast<String>(),
      clientIncidentDetails: map['clientIncidentDetails'] == null ? null : ClientIncidentDetailsResponse.fromMap((map['clientIncidentDetails'] as Map).cast<String, dynamic>()),
      confidenceLevel: map['confidenceLevel'] == null ? null : map['confidenceLevel'] as String,
      connectivity: map['connectivity'] == null ? null : ConnectivityResponse.fromMap((map['connectivity'] as Map).cast<String, dynamic>()),
      endDateTime: map['endDateTime'] == null ? null : map['endDateTime'] as String,
      errorDetails: map['errorDetails'] == null ? null : ErrorDetailPropertiesResponse.fromMap((map['errorDetails'] as Map).cast<String, dynamic>()),
      impactCategory: map['impactCategory'] as String,
      impactDescription: map['impactDescription'] == null ? null : map['impactDescription'] as String,
      impactGroupId: map['impactGroupId'] == null ? null : map['impactGroupId'] as String,
      impactUniqueId: map['impactUniqueId'] as String,
      impactedResourceId: map['impactedResourceId'] as String,
      performance: map['performance'] == null ? null : pulumi.Input.decodeList<PerformanceResponse>(map['performance'], (value) => PerformanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      reportedTimeUtc: map['reportedTimeUtc'] as String,
      startDateTime: map['startDateTime'] as String,
      workload: map['workload'] == null ? null : WorkloadResponse.fromMap((map['workload'] as Map).cast<String, dynamic>()),
    );
  }
}

