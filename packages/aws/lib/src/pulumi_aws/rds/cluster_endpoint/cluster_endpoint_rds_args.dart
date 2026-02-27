// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ClusterEndpoint.
class ClusterEndpointRdsArgs {
  /// The identifier to use for the new endpoint. This parameter is stored as a lowercase string.
  final pulumi.Input<String> clusterEndpointIdentifier;

  /// The cluster identifier.
  final pulumi.Input<String> clusterIdentifier;

  /// The type of the endpoint. One of: READER , ANY .
  final pulumi.Input<String> customEndpointType;

  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with `static_members`.
  final pulumi.Input<List<String>>? excludedMembers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of DB instance identifiers that are part of the custom endpoint group. Conflicts with `excluded_members`.
  final pulumi.Input<List<String>>? staticMembers;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster-endpoint.html).
  final pulumi.Input<Map<String, String>>? tags;

  ClusterEndpointRdsArgs({
    required this.clusterEndpointIdentifier,
    required this.clusterIdentifier,
    required this.customEndpointType,
    this.excludedMembers,
    this.region,
    this.staticMembers,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterEndpointIdentifier'] = clusterEndpointIdentifier;
    map['clusterIdentifier'] = clusterIdentifier;
    map['customEndpointType'] = customEndpointType;
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

  factory ClusterEndpointRdsArgs.fromMap(Map<String, dynamic> map) {
    return ClusterEndpointRdsArgs(
      clusterEndpointIdentifier:
          pulumi.Input.asInput<String>(map['clusterEndpointIdentifier']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      customEndpointType:
          pulumi.Input.asInput<String>(map['customEndpointType']),
      excludedMembers:
          pulumi.Input.asOptionalInput<List<String>>(map['excludedMembers']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      staticMembers:
          pulumi.Input.asOptionalInput<List<String>>(map['staticMembers']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
