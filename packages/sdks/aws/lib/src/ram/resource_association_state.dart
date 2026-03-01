// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceAssociation resources.
class ResourceAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share.
  final pulumi.Input<String>? resourceArn;
  /// Amazon Resource Name (ARN) of the RAM Resource Share.
  final pulumi.Input<String>? resourceShareArn;

  /// Creates a new [ResourceAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share.
  /// [resourceShareArn] Amazon Resource Name (ARN) of the RAM Resource Share.
  ResourceAssociationState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? resourceShareArn,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      resourceShareArn = pulumi.Input.asOptionalInput<String>(resourceShareArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': ?resourceArn,
      'resourceShareArn': ?resourceShareArn,
    };
  }

  factory ResourceAssociationState.fromMap(Map<String, dynamic> map) {
    return ResourceAssociationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      resourceShareArn: map['resourceShareArn'] == null ? null : pulumi.Output.create<String>(map['resourceShareArn'] as String),
    );
  }
}

