// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubnetGroup resources.
class SubnetGroupState {
  /// A description of the subnet group.
  final pulumi.Input<String?>? description;
  /// The name of the subnet group.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A list of VPC subnet IDs for the subnet group.
  final pulumi.Input<List<String>?>? subnetIds;
  /// VPC ID of the subnet group.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [SubnetGroupState].
  /// [description] A description of the subnet group.
  /// [name] The name of the subnet group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] A list of VPC subnet IDs for the subnet group.
  /// [vpcId] VPC ID of the subnet group.
  const SubnetGroupState({
    this.description,
    this.name,
    this.region,
    this.subnetIds,
    this.vpcId,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
