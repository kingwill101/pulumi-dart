// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubnetGroup resources.
class SubnetGroupState {
  /// A description of the subnet group.
  final pulumi.Input<String>? description;
  /// The name of the subnet group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of VPC subnet IDs for the subnet group.
  final pulumi.Input<List<String>>? subnetIds;
  /// VPC ID of the subnet group.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SubnetGroupState].
  /// [description] A description of the subnet group.
  /// [name] The name of the subnet group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] A list of VPC subnet IDs for the subnet group.
  /// [vpcId] VPC ID of the subnet group.
  SubnetGroupState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<String>? vpcId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'subnetIds': ?subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory SubnetGroupState.fromMap(Map<String, dynamic> map) {
    return SubnetGroupState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

