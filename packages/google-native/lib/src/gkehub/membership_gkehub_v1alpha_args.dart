// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_gkehub_v1alpha.dart';
import 'membership_endpoint_gkehub_v1alpha.dart';
import 'monitoring_config_gkehub_v1alpha.dart';

/// {@template pulumi_gkehub_v1alpha_membership_gkehub_v1alpha_args_doc}
/// The set of arguments for Membership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_membership_gkehub_v1alpha_args_doc}
class MembershipGkehubV1alphaArgs {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  final pulumi.Input<AuthorityGkehubV1alpha>? authority;

  /// Optional. Endpoint information to reach this member.
  final pulumi.Input<MembershipEndpointGkehubV1alpha>? endpoint;

  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  final pulumi.Input<String>? externalId;

  /// Optional. Labels for this membership.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> membershipId;

  /// Optional. The monitoring config information for this membership.
  final pulumi.Input<MonitoringConfigGkehubV1alpha>? monitoringConfig;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [MembershipGkehubV1alphaArgs].
  /// [authority] Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// [endpoint] Optional. Endpoint information to reach this member.
  /// [externalId] Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  /// [labels] Optional. Labels for this membership.
  /// [location] Optional.
  /// [membershipId] Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  /// [monitoringConfig] Optional. The monitoring config information for this membership.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  MembershipGkehubV1alphaArgs({
    AuthorityGkehubV1alpha? authority,
    MembershipEndpointGkehubV1alpha? endpoint,
    String? externalId,
    Map<String, String>? labels,
    String? location,
    required String membershipId,
    MonitoringConfigGkehubV1alpha? monitoringConfig,
    String? project,
    String? requestId,
  })  : authority =
            pulumi.Input.asOptionalInput<AuthorityGkehubV1alpha>(authority),
        endpoint =
            pulumi.Input.asOptionalInput<MembershipEndpointGkehubV1alpha>(
                endpoint),
        externalId = pulumi.Input.asOptionalInput<String>(externalId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        membershipId = pulumi.Input.asInput<String>(membershipId),
        monitoringConfig =
            pulumi.Input.asOptionalInput<MonitoringConfigGkehubV1alpha>(
                monitoringConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorityValue = authority;
    if (authorityValue != null) {
      map['authority'] = pulumi.Input.mapOptionalInputValue<
          AuthorityGkehubV1alpha,
          Map<String, dynamic>>(authorityValue, (value) => value.toMap());
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = pulumi.Input.mapOptionalInputValue<
          MembershipEndpointGkehubV1alpha,
          Map<String, dynamic>>(endpointValue, (value) => value.toMap());
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
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
              MonitoringConfigGkehubV1alpha, Map<String, dynamic>>(
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

  factory MembershipGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return MembershipGkehubV1alphaArgs(
      authority: map['authority'] == null
          ? null
          : AuthorityGkehubV1alpha.fromMap(
              (map['authority'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] == null
          ? null
          : MembershipEndpointGkehubV1alpha.fromMap(
              (map['endpoint'] as Map).cast<String, dynamic>()),
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      membershipId: map['membershipId'] as String,
      monitoringConfig: map['monitoringConfig'] == null
          ? null
          : MonitoringConfigGkehubV1alpha.fromMap(
              (map['monitoringConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
