// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcConnection resources.
class VpcConnectionState {
  /// Amazon Resource Name (ARN) of the VPC connection.
  final pulumi.Input<String>? arn;
  /// The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  final pulumi.Input<String>? authentication;
  /// The list of subnets in the client VPC to connect to.
  final pulumi.Input<List<String>>? clientSubnets;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The security groups to attach to the ENIs for the broker nodes.
  final pulumi.Input<List<String>>? securityGroups;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) of the cluster.
  final pulumi.Input<String>? targetClusterArn;
  /// The VPC ID of the remote client.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcConnectionState].
  /// [arn] Amazon Resource Name (ARN) of the VPC connection.
  /// [authentication] The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  /// [clientSubnets] The list of subnets in the client VPC to connect to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] The security groups to attach to the ENIs for the broker nodes.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetClusterArn] The Amazon Resource Name (ARN) of the cluster.
  /// [vpcId] The VPC ID of the remote client.
  VpcConnectionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authentication,
    pulumi.Output<List<String>>? clientSubnets,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroups,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetClusterArn,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authentication = pulumi.Input.asOptionalInput<String>(authentication),
      clientSubnets = pulumi.Input.asOptionalInput<List<String>>(clientSubnets),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetClusterArn = pulumi.Input.asOptionalInput<String>(targetClusterArn),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authentication': ?authentication,
      'clientSubnets': ?clientSubnets,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetClusterArn': ?targetClusterArn,
      'vpcId': ?vpcId,
    };
  }

  factory VpcConnectionState.fromMap(Map<String, dynamic> map) {
    return VpcConnectionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authentication: map['authentication'] == null ? null : pulumi.Output.create<String>(map['authentication'] as String),
      clientSubnets: map['clientSubnets'] == null ? null : pulumi.Output.create<List<String>>((map['clientSubnets'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroups'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetClusterArn: map['targetClusterArn'] == null ? null : pulumi.Output.create<String>(map['targetClusterArn'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

