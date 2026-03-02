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
  final pulumi.Input<dynamic>? additionalProperties;
  /// The ARM correlation ids, this is important field for control plane related impacts
  final pulumi.Input<List<String>>? armCorrelationIds;
  /// Client incident details ex: incidentId , incident source
  final pulumi.Input<ClientIncidentDetails>? clientIncidentDetails;
  /// Degree of confidence on the impact being a platform issue
  final pulumi.Input<String>? confidenceLevel;
  /// Details about connectivity issue. Applicable when root resource causing the issue is not identified. For example, when a VM is impacted due to a network issue, the impacted resource is identified as the VM, but the root cause is the network. In such cases, the connectivity field will have the details about the network issue
  final pulumi.Input<Connectivity>? connectivity;
  /// Time at which impact has ended
  final pulumi.Input<String>? endDateTime;
  /// ARM error code and error message associated with the impact
  final pulumi.Input<ErrorDetailProperties>? errorDetails;
  /// Category of the impact,  details can found from /impactCategories API
  final pulumi.Input<String> impactCategory;
  /// A detailed description of the impact
  final pulumi.Input<String>? impactDescription;
  /// Use this field to group impacts
  final pulumi.Input<String>? impactGroupId;
  /// Azure resource id of the impacted resource
  final pulumi.Input<String> impactedResourceId;
  /// Details about performance issue. Applicable for performance impacts.
  final pulumi.Input<List<Performance>>? performance;
  /// Time at which impact was observed
  final pulumi.Input<String> startDateTime;
  /// Information about the impacted workload
  final pulumi.Input<Workload>? workload;

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
      'clientIncidentDetails': ?pulumi.Input.mapOptionalInputValue<ClientIncidentDetails, Map<String, dynamic>>(clientIncidentDetails, (value) => value.toMap()),
      'confidenceLevel': ?confidenceLevel,
      'connectivity': ?pulumi.Input.mapOptionalInputValue<Connectivity, Map<String, dynamic>>(connectivity, (value) => value.toMap()),
      'endDateTime': ?endDateTime,
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<ErrorDetailProperties, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'impactCategory': impactCategory,
      'impactDescription': ?impactDescription,
      'impactGroupId': ?impactGroupId,
      'impactedResourceId': impactedResourceId,
      'performance': ?pulumi.Input.mapOptionalInputValue<List<Performance>, List<Map<String, dynamic>>>(performance, (value) => pulumi.Input.encodeList<Performance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startDateTime': startDateTime,
      'workload': ?pulumi.Input.mapOptionalInputValue<Workload, Map<String, dynamic>>(workload, (value) => value.toMap()),
    };
  }

  factory WorkloadImpactProperties.fromMap(Map<String, dynamic> map) {
    return WorkloadImpactProperties(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties']).input(),
      armCorrelationIds: map['armCorrelationIds'] == null ? null : ((map['armCorrelationIds'] as List).cast<String>()).input(),
      clientIncidentDetails: map['clientIncidentDetails'] == null ? null : (ClientIncidentDetails.fromMap((map['clientIncidentDetails'] as Map).cast<String, dynamic>())).input(),
      confidenceLevel: map['confidenceLevel'] == null ? null : (map['confidenceLevel'] as String).input(),
      connectivity: map['connectivity'] == null ? null : (Connectivity.fromMap((map['connectivity'] as Map).cast<String, dynamic>())).input(),
      endDateTime: map['endDateTime'] == null ? null : (map['endDateTime'] as String).input(),
      errorDetails: map['errorDetails'] == null ? null : (ErrorDetailProperties.fromMap((map['errorDetails'] as Map).cast<String, dynamic>())).input(),
      impactCategory: (map['impactCategory'] as String).input(),
      impactDescription: map['impactDescription'] == null ? null : (map['impactDescription'] as String).input(),
      impactGroupId: map['impactGroupId'] == null ? null : (map['impactGroupId'] as String).input(),
      impactedResourceId: (map['impactedResourceId'] as String).input(),
      performance: map['performance'] == null ? null : (pulumi.Input.decodeList<Performance>(map['performance'], (value) => Performance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startDateTime: (map['startDateTime'] as String).input(),
      workload: map['workload'] == null ? null : (Workload.fromMap((map['workload'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

