// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_gkehub_v1beta1.dart';
import 'membership_endpoint_gkehub_v1beta1.dart';
import 'membership_infrastructure_type_gkehub_v1beta1.dart';
import 'monitoring_config_gkehub_v1beta1.dart';

/// The set of arguments for Membership.
class MembershipGkehubV1beta1Args {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  final pulumi.Input<AuthorityGkehubV1beta1>? authority;

  /// Optional. Description of this membership, limited to 63 characters. Must match the regex: `a-zA-Z0-9*`
  final pulumi.Input<String>? description;

  /// Optional. Endpoint information to reach this member.
  final pulumi.Input<MembershipEndpointGkehubV1beta1>? endpoint;

  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. For GKE clusters, external_id is managed by the Hub API and updates will be ignored. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  final pulumi.Input<String>? externalId;

  /// Optional. The infrastructure type this Membership is running on.
  final pulumi.Input<MembershipInfrastructureTypeGkehubV1beta1>?
      infrastructureType;

  /// Optional. GCP labels for this membership.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> membershipId;

  /// Optional. The monitoring config information for this membership.
  final pulumi.Input<MonitoringConfigGkehubV1beta1>? monitoringConfig;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  MembershipGkehubV1beta1Args({
    this.authority,
    this.description,
    this.endpoint,
    this.externalId,
    this.infrastructureType,
    this.labels,
    this.location,
    required this.membershipId,
    this.monitoringConfig,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorityValue = authority;
    if (authorityValue != null) {
      map['authority'] = pulumi.Input.mapOptionalInputValue<
          AuthorityGkehubV1beta1,
          Map<String, dynamic>>(authorityValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = pulumi.Input.mapOptionalInputValue<
          MembershipEndpointGkehubV1beta1,
          Map<String, dynamic>>(endpointValue, (value) => value.toMap());
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final infrastructureTypeValue = infrastructureType;
    if (infrastructureTypeValue != null) {
      map['infrastructureType'] = pulumi.Input.mapOptionalInputValue<
          MembershipInfrastructureTypeGkehubV1beta1,
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
              MonitoringConfigGkehubV1beta1, Map<String, dynamic>>(
          monitoringConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory MembershipGkehubV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MembershipGkehubV1beta1Args(
      authority: pulumi.Input.asOptionalInput<AuthorityGkehubV1beta1>(
          map['authority']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      endpoint: pulumi.Input.asOptionalInput<MembershipEndpointGkehubV1beta1>(
          map['endpoint']),
      externalId: pulumi.Input.asOptionalInput<String>(map['externalId']),
      infrastructureType: pulumi.Input.asOptionalInput<
          MembershipInfrastructureTypeGkehubV1beta1>(map['infrastructureType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      monitoringConfig:
          pulumi.Input.asOptionalInput<MonitoringConfigGkehubV1beta1>(
              map['monitoringConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
