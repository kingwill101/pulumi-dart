// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_gkehub_v1alpha2.dart';
import 'membership_endpoint_gkehub_v1alpha2.dart';
import 'membership_infrastructure_type.dart';
import 'monitoring_config_gkehub_v1alpha2.dart';

/// {@template pulumi_gkehub_v1alpha2_membership_gkehub_v1alpha2_args_doc}
/// The set of arguments for Membership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha2_membership_gkehub_v1alpha2_args_doc}
class MembershipGkehubV1alpha2Args {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  final pulumi.Input<AuthorityGkehubV1alpha2>? authority;

  /// Optional. Endpoint information to reach this member.
  final pulumi.Input<MembershipEndpointGkehubV1alpha2>? endpoint;

  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. For GKE clusters, external_id is managed by the Hub API and updates will be ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  final pulumi.Input<String>? externalId;

  /// Optional. The infrastructure type this Membership is running on.
  final pulumi.Input<MembershipInfrastructureType>? infrastructureType;

  /// Optional. Labels for this membership.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> membershipId;

  /// Optional. The monitoring config information for this membership.
  final pulumi.Input<MonitoringConfigGkehubV1alpha2>? monitoringConfig;
  final pulumi.Input<String>? project;

  /// Creates a new [MembershipGkehubV1alpha2Args].
  /// [authority] Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// [endpoint] Optional. Endpoint information to reach this member.
  /// [externalId] Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. For GKE clusters, external_id is managed by the Hub API and updates will be ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  /// [infrastructureType] Optional. The infrastructure type this Membership is running on.
  /// [labels] Optional. Labels for this membership.
  /// [location] Optional.
  /// [membershipId] Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  /// [monitoringConfig] Optional. The monitoring config information for this membership.
  /// [project] Optional.
  MembershipGkehubV1alpha2Args({
    AuthorityGkehubV1alpha2? authority,
    MembershipEndpointGkehubV1alpha2? endpoint,
    String? externalId,
    MembershipInfrastructureType? infrastructureType,
    Map<String, String>? labels,
    String? location,
    required String membershipId,
    MonitoringConfigGkehubV1alpha2? monitoringConfig,
    String? project,
  })  : authority =
            pulumi.Input.asOptionalInput<AuthorityGkehubV1alpha2>(authority),
        endpoint =
            pulumi.Input.asOptionalInput<MembershipEndpointGkehubV1alpha2>(
                endpoint),
        externalId = pulumi.Input.asOptionalInput<String>(externalId),
        infrastructureType =
            pulumi.Input.asOptionalInput<MembershipInfrastructureType>(
                infrastructureType),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        membershipId = pulumi.Input.asInput<String>(membershipId),
        monitoringConfig =
            pulumi.Input.asOptionalInput<MonitoringConfigGkehubV1alpha2>(
                monitoringConfig),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorityValue = authority;
    if (authorityValue != null) {
      map['authority'] = pulumi.Input.mapOptionalInputValue<
          AuthorityGkehubV1alpha2,
          Map<String, dynamic>>(authorityValue, (value) => value.toMap());
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = pulumi.Input.mapOptionalInputValue<
          MembershipEndpointGkehubV1alpha2,
          Map<String, dynamic>>(endpointValue, (value) => value.toMap());
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final infrastructureTypeValue = infrastructureType;
    if (infrastructureTypeValue != null) {
      map['infrastructureType'] = pulumi.Input.mapOptionalInputValue<
          MembershipInfrastructureType,
          String>(infrastructureTypeValue, (value) => value.value);
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
      map['monitoringConfig'] = pulumi.Input.mapOptionalInputValue<
              MonitoringConfigGkehubV1alpha2, Map<String, dynamic>>(
          monitoringConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MembershipGkehubV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return MembershipGkehubV1alpha2Args(
      authority: map['authority'] == null
          ? null
          : AuthorityGkehubV1alpha2.fromMap(
              (map['authority'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] == null
          ? null
          : MembershipEndpointGkehubV1alpha2.fromMap(
              (map['endpoint'] as Map).cast<String, dynamic>()),
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      infrastructureType: map['infrastructureType'] == null
          ? null
          : MembershipInfrastructureType.fromValue(
              map['infrastructureType'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      membershipId: map['membershipId'] as String,
      monitoringConfig: map['monitoringConfig'] == null
          ? null
          : MonitoringConfigGkehubV1alpha2.fromMap(
              (map['monitoringConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
