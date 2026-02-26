// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'authority6.dart';
import 'membership_endpoint5.dart';
import 'monitoring_config7.dart';

/// The set of arguments for Membership.
class MembershipArgs7 {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  final Input<Authority6>? authority;

  /// Optional. Endpoint information to reach this member.
  final Input<MembershipEndpoint5>? endpoint;

  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  final Input<String>? externalId;

  /// Optional. Labels for this membership.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Required. Client chosen ID for the membership. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final Input<String> membershipId;

  /// Optional. The monitoring config information for this membership.
  final Input<MonitoringConfig7>? monitoringConfig;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  MembershipArgs7({
    this.authority,
    this.endpoint,
    this.externalId,
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
      map['authority'] =
          Input.mapOptionalInputValue<Authority6, Map<String, dynamic>>(
              authorityValue, (value) => value.toMap());
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = Input.mapOptionalInputValue<MembershipEndpoint5,
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
      map['monitoringConfig'] =
          Input.mapOptionalInputValue<MonitoringConfig7, Map<String, dynamic>>(
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

  factory MembershipArgs7.fromMap(Map<String, dynamic> map) {
    return MembershipArgs7(
      authority: Input.asOptionalInput<Authority6>(map['authority']),
      endpoint: Input.asOptionalInput<MembershipEndpoint5>(map['endpoint']),
      externalId: Input.asOptionalInput<String>(map['externalId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      membershipId: Input.asInput<String>(map['membershipId']),
      monitoringConfig:
          Input.asOptionalInput<MonitoringConfig7>(map['monitoringConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
