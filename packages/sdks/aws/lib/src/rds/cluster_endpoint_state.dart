// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterEndpoint resources.
class ClusterEndpointState {
  /// Amazon Resource Name (ARN) of cluster
  final pulumi.Input<String>? arn;
  /// The identifier to use for the new endpoint. This parameter is stored as a lowercase string.
  final pulumi.Input<String>? clusterEndpointIdentifier;
  /// The cluster identifier.
  final pulumi.Input<String>? clusterIdentifier;
  /// The type of the endpoint. One of: READER , ANY .
  final pulumi.Input<String>? customEndpointType;
  /// A custom endpoint for the Aurora cluster
  final pulumi.Input<String>? endpoint;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ClusterEndpointState].
  /// [arn] Amazon Resource Name (ARN) of cluster
  /// [clusterEndpointIdentifier] The identifier to use for the new endpoint. This parameter is stored as a lowercase string.
  /// [clusterIdentifier] The cluster identifier.
  /// [customEndpointType] The type of the endpoint. One of: READER , ANY .
  /// [endpoint] A custom endpoint for the Aurora cluster
  /// [excludedMembers] List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with `static_members`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [staticMembers] List of DB instance identifiers that are part of the custom endpoint group. Conflicts with `excluded_members`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ClusterEndpointState({
    this.arn,
    this.clusterEndpointIdentifier,
    this.clusterIdentifier,
    this.customEndpointType,
    this.endpoint,
    this.excludedMembers,
    this.region,
    this.staticMembers,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterEndpointIdentifier': ?clusterEndpointIdentifier,
      'clusterIdentifier': ?clusterIdentifier,
      'customEndpointType': ?customEndpointType,
      'endpoint': ?endpoint,
      'excludedMembers': ?excludedMembers,
      'region': ?region,
      'staticMembers': ?staticMembers,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ClusterEndpointState.fromMap(Map<String, dynamic> map) {
    return ClusterEndpointState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      clusterEndpointIdentifier: map['clusterEndpointIdentifier'] == null ? null : ((map['clusterEndpointIdentifier'] as String).input()).input(),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : ((map['clusterIdentifier'] as String).input()).input(),
      customEndpointType: map['customEndpointType'] == null ? null : ((map['customEndpointType'] as String).input()).input(),
      endpoint: map['endpoint'] == null ? null : ((map['endpoint'] as String).input()).input(),
      excludedMembers: map['excludedMembers'] == null ? null : (((map['excludedMembers'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      staticMembers: map['staticMembers'] == null ? null : (((map['staticMembers'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

