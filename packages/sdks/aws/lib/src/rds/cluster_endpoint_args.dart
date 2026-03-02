// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_cluster_endpoint_cluster_endpoint_args_doc}
/// The set of arguments for ClusterEndpoint.
/// {@endtemplate}
/// {@macro pulumi_rds_cluster_endpoint_cluster_endpoint_args_doc}
class ClusterEndpointArgs {
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

  /// Creates a new [ClusterEndpointArgs].
  /// [clusterEndpointIdentifier] The identifier to use for the new endpoint. This parameter is stored as a lowercase string.
  /// [clusterIdentifier] The cluster identifier.
  /// [customEndpointType] The type of the endpoint. One of: READER , ANY .
  /// [excludedMembers] List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with `static_members`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [staticMembers] List of DB instance identifiers that are part of the custom endpoint group. Conflicts with `excluded_members`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterEndpointArgs({
    required this.clusterEndpointIdentifier,
    required this.clusterIdentifier,
    required this.customEndpointType,
    this.excludedMembers,
    this.region,
    this.staticMembers,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterEndpointIdentifier': clusterEndpointIdentifier,
      'clusterIdentifier': clusterIdentifier,
      'customEndpointType': customEndpointType,
      'excludedMembers': ?excludedMembers,
      'region': ?region,
      'staticMembers': ?staticMembers,
      'tags': ?tags,
    };
  }

  factory ClusterEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ClusterEndpointArgs(
      clusterEndpointIdentifier: (map['clusterEndpointIdentifier'] as String).input(),
      clusterIdentifier: (map['clusterIdentifier'] as String).input(),
      customEndpointType: (map['customEndpointType'] as String).input(),
      excludedMembers: map['excludedMembers'] == null ? null : (((map['excludedMembers'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      staticMembers: map['staticMembers'] == null ? null : (((map['staticMembers'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

