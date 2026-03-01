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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? clusterEndpointIdentifier,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? endpointType,
    pulumi.Output<List<String>>? excludedMembers,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? staticMembers,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clusterEndpointIdentifier = pulumi.Input.asOptionalInput<String>(clusterEndpointIdentifier),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      excludedMembers = pulumi.Input.asOptionalInput<List<String>>(excludedMembers),
      region = pulumi.Input.asOptionalInput<String>(region),
      staticMembers = pulumi.Input.asOptionalInput<List<String>>(staticMembers),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clusterEndpointIdentifier: map['clusterEndpointIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterEndpointIdentifier'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      excludedMembers: map['excludedMembers'] == null ? null : pulumi.Output.create<List<String>>((map['excludedMembers'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      staticMembers: map['staticMembers'] == null ? null : pulumi.Output.create<List<String>>((map['staticMembers'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

