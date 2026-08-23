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
  final pulumi.Input<dynamic>? additionalProperties;
  /// The ARM correlation ids, this is important field for control plane related impacts
  final pulumi.Input<List<String>>? armCorrelationIds;
  /// Client incident details ex: incidentId , incident source
  final pulumi.Input<ClientIncidentDetailsResponse>? clientIncidentDetails;
  /// Degree of confidence on the impact being a platform issue
  final pulumi.Input<String>? confidenceLevel;
  /// Details about connectivity issue. Applicable when root resource causing the issue is not identified. For example, when a VM is impacted due to a network issue, the impacted resource is identified as the VM, but the root cause is the network. In such cases, the connectivity field will have the details about the network issue
  final pulumi.Input<ConnectivityResponse>? connectivity;
  /// Time at which impact has ended
  final pulumi.Input<String>? endDateTime;
  /// ARM error code and error message associated with the impact
  final pulumi.Input<ErrorDetailPropertiesResponse>? errorDetails;
  /// Category of the impact,  details can found from /impactCategories API
  final pulumi.Input<String> impactCategory;
  /// A detailed description of the impact
  final pulumi.Input<String>? impactDescription;
  /// Use this field to group impacts
  final pulumi.Input<String>? impactGroupId;
  /// Unique ID of the impact (UUID)
  final pulumi.Input<String> impactUniqueId;
  /// Azure resource id of the impacted resource
  final pulumi.Input<String> impactedResourceId;
  /// Details about performance issue. Applicable for performance impacts.
  final pulumi.Input<List<PerformanceResponse>>? performance;
  /// Resource provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Time at which impact is reported
  final pulumi.Input<String> reportedTimeUtc;
  /// Time at which impact was observed
  final pulumi.Input<String> startDateTime;
  /// Information about the impacted workload
  final pulumi.Input<WorkloadResponse>? workload;

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
  const WorkloadImpactPropertiesResponse({
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
      'clientIncidentDetails': ?pulumi.Input.mapOptionalInputValue<ClientIncidentDetailsResponse, Map<String, dynamic>>(clientIncidentDetails, (value) => value.toMap()),
      'confidenceLevel': ?confidenceLevel,
      'connectivity': ?pulumi.Input.mapOptionalInputValue<ConnectivityResponse, Map<String, dynamic>>(connectivity, (value) => value.toMap()),
      'endDateTime': ?endDateTime,
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<ErrorDetailPropertiesResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'impactCategory': impactCategory,
      'impactDescription': ?impactDescription,
      'impactGroupId': ?impactGroupId,
      'impactUniqueId': impactUniqueId,
      'impactedResourceId': impactedResourceId,
      'performance': ?pulumi.Input.mapOptionalInputValue<List<PerformanceResponse>, List<Map<String, dynamic>>>(performance, (value) => pulumi.Input.encodeList<PerformanceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'reportedTimeUtc': reportedTimeUtc,
      'startDateTime': startDateTime,
      'workload': ?pulumi.Input.mapOptionalInputValue<WorkloadResponse, Map<String, dynamic>>(workload, (value) => value.toMap()),
    };
  }

  factory WorkloadImpactPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadImpactPropertiesResponse(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      armCorrelationIds: (() { final guardedValue = map['armCorrelationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientIncidentDetails: (() { final guardedValue = map['clientIncidentDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientIncidentDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      confidenceLevel: (() { final guardedValue = map['confidenceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectivity: (() { final guardedValue = map['connectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endDateTime: (() { final guardedValue = map['endDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      impactCategory: pulumi.Input.fromValue(map['impactCategory'] as String),
      impactDescription: (() { final guardedValue = map['impactDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      impactGroupId: (() { final guardedValue = map['impactGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      impactUniqueId: pulumi.Input.fromValue(map['impactUniqueId'] as String),
      impactedResourceId: pulumi.Input.fromValue(map['impactedResourceId'] as String),
      performance: (() { final guardedValue = map['performance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PerformanceResponse>(guardedValue, (value) => PerformanceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      reportedTimeUtc: pulumi.Input.fromValue(map['reportedTimeUtc'] as String),
      startDateTime: pulumi.Input.fromValue(map['startDateTime'] as String),
      workload: (() { final guardedValue = map['workload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
