// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'authority3.dart';
import 'membership_endpoint2.dart';
import 'membership_infrastructure_type.dart';
import 'monitoring_config4.dart';

/// The set of arguments for Membership.
class MembershipArgs4 {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  final Input<Authority3>? authority;

  /// Optional. Endpoint information to reach this member.
  final Input<MembershipEndpoint2>? endpoint;

  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. For GKE clusters, external_id is managed by the Hub API and updates will be ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  final Input<String>? externalId;

  /// Optional. The infrastructure type this Membership is running on.
  final Input<MembershipInfrastructureType>? infrastructureType;

  /// Optional. Labels for this membership.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final Input<String> membershipId;

  /// Optional. The monitoring config information for this membership.
  final Input<MonitoringConfig4>? monitoringConfig;
  final Input<String>? project;

  MembershipArgs4({
    this.authority,
    this.endpoint,
    this.externalId,
    this.infrastructureType,
    this.labels,
    this.location,
    required this.membershipId,
    this.monitoringConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorityValue = authority;
    if (authorityValue != null) {
      map['authority'] =
          Input.mapOptionalInputValue<Authority3, Map<String, dynamic>>(
              authorityValue, (value) => value.toMap());
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = Input.mapOptionalInputValue<MembershipEndpoint2,
          Map<String, dynamic>>(endpointValue, (value) => value.toMap());
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final infrastructureTypeValue = infrastructureType;
    if (infrastructureTypeValue != null) {
      map['infrastructureType'] =
          Input.mapOptionalInputValue<MembershipInfrastructureType, String>(
              infrastructureTypeValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['membershipId'] = membershipId;
    final monitoringConfigValue = monitoringConfig;
    if (monitoringConfigValue != null) {
      map['monitoringConfig'] =
          Input.mapOptionalInputValue<MonitoringConfig4, Map<String, dynamic>>(
              monitoringConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MembershipArgs4.fromMap(Map<String, dynamic> map) {
    return MembershipArgs4(
      authority: Input.asOptionalInput<Authority3>(map['authority']),
      endpoint: Input.asOptionalInput<MembershipEndpoint2>(map['endpoint']),
      externalId: Input.asOptionalInput<String>(map['externalId']),
      infrastructureType: Input.asOptionalInput<MembershipInfrastructureType>(
          map['infrastructureType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      membershipId: Input.asInput<String>(map['membershipId']),
      monitoringConfig:
          Input.asOptionalInput<MonitoringConfig4>(map['monitoringConfig']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
