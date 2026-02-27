// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_membership_authority/get_membership_authority.dart';
import '../get_membership_endpoint/get_membership_endpoint.dart';

/// Result data returned by getMembership.
class GetMembershipResult {
  final List<GetMembershipAuthority> authorities;
  final Map<String, String> effectiveLabels;
  final List<GetMembershipEndpoint> endpoints;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String membershipId;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;

  GetMembershipResult({
    required this.authorities,
    required this.effectiveLabels,
    required this.endpoints,
    required this.id,
    required this.labels,
    required this.location,
    required this.membershipId,
    required this.name,
    this.project,
    required this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorities'] =
        pulumi.Input.encodeList<GetMembershipAuthority, Map<String, dynamic>>(
            authorities, (value) => value.toMap());
    map['effectiveLabels'] = effectiveLabels;
    map['endpoints'] =
        pulumi.Input.encodeList<GetMembershipEndpoint, Map<String, dynamic>>(
            endpoints, (value) => value.toMap());
    map['id'] = id;
    map['labels'] = labels;
    map['location'] = location;
    map['membershipId'] = membershipId;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    return map;
  }

  factory GetMembershipResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipResult(
      authorities: pulumi.Input.decodeList<GetMembershipAuthority>(
          map['authorities'],
          (value) => GetMembershipAuthority.fromMap(
              (value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      endpoints: pulumi.Input.decodeList<GetMembershipEndpoint>(
          map['endpoints'],
          (value) => GetMembershipEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      membershipId: map['membershipId'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
    );
  }
}
