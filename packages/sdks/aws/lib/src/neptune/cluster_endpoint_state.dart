// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterEndpoint resources.
class ClusterEndpointState {
  /// The Neptune Cluster Endpoint Amazon Resource Name (ARN).
  final pulumi.Input<String>? arn;
  /// The identifier of the endpoint.
  final pulumi.Input<String>? clusterEndpointIdentifier;
  /// The DB cluster identifier of the DB cluster associated with the endpoint.
  final pulumi.Input<String>? clusterIdentifier;
  /// The DNS address of the endpoint.
  final pulumi.Input<String>? endpoint;
  /// The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
  final pulumi.Input<String>? endpointType;
  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.
  final pulumi.Input<List<String>>? excludedMembers;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of DB instance identifiers that are part of the custom endpoint group.
  final pulumi.Input<List<String>>? staticMembers;
  /// A map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ClusterEndpointState].
  /// [arn] The Neptune Cluster Endpoint Amazon Resource Name (ARN).
  /// [clusterEndpointIdentifier] The identifier of the endpoint.
  /// [clusterIdentifier] The DB cluster identifier of the DB cluster associated with the endpoint.
  /// [endpoint] The DNS address of the endpoint.
  /// [endpointType] The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
  /// [excludedMembers] List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [staticMembers] List of DB instance identifiers that are part of the custom endpoint group.
  /// [tags] A map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ClusterEndpointState({
    this.arn,
    this.clusterEndpointIdentifier,
    this.clusterIdentifier,
    this.endpoint,
    this.endpointType,
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
      'endpoint': ?endpoint,
      'endpointType': ?endpointType,
      'excludedMembers': ?excludedMembers,
      'region': ?region,
      'staticMembers': ?staticMembers,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ClusterEndpointState.fromMap(Map<String, dynamic> map) {
    return ClusterEndpointState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      clusterEndpointIdentifier: map['clusterEndpointIdentifier'] == null ? null : (map['clusterEndpointIdentifier'] as String).input(),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : (map['clusterIdentifier'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      excludedMembers: map['excludedMembers'] == null ? null : ((map['excludedMembers'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      staticMembers: map['staticMembers'] == null ? null : ((map['staticMembers'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

