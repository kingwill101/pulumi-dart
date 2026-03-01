// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_incident_details.dart';
import 'connectivity.dart';
import 'error_detail_properties.dart';
import 'performance.dart';
import 'workload.dart';

/// Workload impact properties
class WorkloadImpactProperties {
  /// Additional fields related to impact, applicable fields per resource type are list under /impactCategories API
  final dynamic additionalProperties;
  /// The ARM correlation ids, this is important field for control plane related impacts
  final List<String>? armCorrelationIds;
  /// Client incident details ex: incidentId , incident source
  final ClientIncidentDetails? clientIncidentDetails;
  /// Degree of confidence on the impact being a platform issue
  final String? confidenceLevel;
  /// Details about connectivity issue. Applicable when root resource causing the issue is not identified. For example, when a VM is impacted due to a network issue, the impacted resource is identified as the VM, but the root cause is the network. In such cases, the connectivity field will have the details about the network issue
  final Connectivity? connectivity;
  /// Time at which impact has ended
  final String? endDateTime;
  /// ARM error code and error message associated with the impact
  final ErrorDetailProperties? errorDetails;
  /// Category of the impact,  details can found from /impactCategories API
  final String impactCategory;
  /// A detailed description of the impact
  final String? impactDescription;
  /// Use this field to group impacts
  final String? impactGroupId;
  /// Azure resource id of the impacted resource
  final String impactedResourceId;
  /// Details about performance issue. Applicable for performance impacts.
  final List<Performance>? performance;
  /// Time at which impact was observed
  final String startDateTime;
  /// Information about the impacted workload
  final Workload? workload;

  /// Creates a new [WorkloadImpactProperties].
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
  /// [impactedResourceId] Azure resource id of the impacted resource
  /// [performance] Details about performance issue. Applicable for performance impacts.
  /// [startDateTime] Time at which impact was observed
  /// [workload] Information about the impacted workload
  WorkloadImpactProperties({
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
    required this.impactedResourceId,
    this.performance,
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
      'impactedResourceId': impactedResourceId,
      'performance': ?performance == null ? null : pulumi.Input.encodeList<Performance, Map<String, dynamic>>(performance!, (value) => value.toMap()),
      'startDateTime': startDateTime,
      'workload': ?workload == null ? null : workload!.toMap(),
    };
  }

  factory WorkloadImpactProperties.fromMap(Map<String, dynamic> map) {
    return WorkloadImpactProperties(
      additionalProperties: map['additionalProperties'] == null ? null : map['additionalProperties'],
      armCorrelationIds: map['armCorrelationIds'] == null ? null : (map['armCorrelationIds'] as List).cast<String>(),
      clientIncidentDetails: map['clientIncidentDetails'] == null ? null : ClientIncidentDetails.fromMap((map['clientIncidentDetails'] as Map).cast<String, dynamic>()),
      confidenceLevel: map['confidenceLevel'] == null ? null : map['confidenceLevel'] as String,
      connectivity: map['connectivity'] == null ? null : Connectivity.fromMap((map['connectivity'] as Map).cast<String, dynamic>()),
      endDateTime: map['endDateTime'] == null ? null : map['endDateTime'] as String,
      errorDetails: map['errorDetails'] == null ? null : ErrorDetailProperties.fromMap((map['errorDetails'] as Map).cast<String, dynamic>()),
      impactCategory: map['impactCategory'] as String,
      impactDescription: map['impactDescription'] == null ? null : map['impactDescription'] as String,
      impactGroupId: map['impactGroupId'] == null ? null : map['impactGroupId'] as String,
      impactedResourceId: map['impactedResourceId'] as String,
      performance: map['performance'] == null ? null : pulumi.Input.decodeList<Performance>(map['performance'], (value) => Performance.fromMap((value as Map).cast<String, dynamic>())),
      startDateTime: map['startDateTime'] as String,
      workload: map['workload'] == null ? null : Workload.fromMap((map['workload'] as Map).cast<String, dynamic>()),
    );
  }
}

