// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ClusterEndpoint.
class ClusterEndpointArgs {
  /// The identifier of the endpoint.
  final pulumi.Input<String> clusterEndpointIdentifier;

  /// The DB cluster identifier of the DB cluster associated with the endpoint.
  final pulumi.Input<String> clusterIdentifier;

  /// The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
  final pulumi.Input<String> endpointType;

  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.
  final pulumi.Input<List<String>>? excludedMembers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of DB instance identifiers that are part of the custom endpoint group.
  final pulumi.Input<List<String>>? staticMembers;

  /// A map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ClusterEndpointArgs({
    required this.clusterEndpointIdentifier,
    required this.clusterIdentifier,
    required this.endpointType,
    this.excludedMembers,
    this.region,
    this.staticMembers,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterEndpointIdentifier'] = clusterEndpointIdentifier;
    map['clusterIdentifier'] = clusterIdentifier;
    map['endpointType'] = endpointType;
    final excludedMembersValue = excludedMembers;
    if (excludedMembersValue != null) {
      map['excludedMembers'] = excludedMembersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final staticMembersValue = staticMembers;
    if (staticMembersValue != null) {
      map['staticMembers'] = staticMembersValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ClusterEndpointArgs(
      clusterEndpointIdentifier:
          pulumi.Input.asInput<String>(map['clusterEndpointIdentifier']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      endpointType: pulumi.Input.asInput<String>(map['endpointType']),
      excludedMembers:
          pulumi.Input.asOptionalInput<List<String>>(map['excludedMembers']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      staticMembers:
          pulumi.Input.asOptionalInput<List<String>>(map['staticMembers']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
