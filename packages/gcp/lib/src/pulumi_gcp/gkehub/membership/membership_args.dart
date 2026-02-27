// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../membership_authority/membership_authority.dart';
import '../membership_endpoint/membership_endpoint.dart';

/// The set of arguments for Membership.
class MembershipArgs {
  /// Authority encodes how Google will recognize identities from this Membership.
  /// See the workload identity documentation for more details:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// Structure is documented below.
  final pulumi.Input<MembershipAuthority>? authority;

  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// Structure is documented below.
  final pulumi.Input<MembershipEndpoint>? endpoint;

  /// Labels to apply to this membership.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location of the membership.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// The client-provided identifier of the membership.
  final pulumi.Input<String> membershipId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  MembershipArgs({
    this.authority,
    this.endpoint,
    this.labels,
    this.location,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorityValue = authority;
    if (authorityValue != null) {
      map['authority'] = pulumi.Input.mapOptionalInputValue<MembershipAuthority,
          Map<String, dynamic>>(authorityValue, (value) => value.toMap());
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = pulumi.Input.mapOptionalInputValue<MembershipEndpoint,
          Map<String, dynamic>>(endpointValue, (value) => value.toMap());
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
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory MembershipArgs.fromMap(Map<String, dynamic> map) {
    return MembershipArgs(
      authority:
          pulumi.Input.asOptionalInput<MembershipAuthority>(map['authority']),
      endpoint:
          pulumi.Input.asOptionalInput<MembershipEndpoint>(map['endpoint']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
