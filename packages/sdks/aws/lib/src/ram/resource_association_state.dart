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
    this.region,
    this.resourceArn,
    this.resourceShareArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': ?resourceArn,
      'resourceShareArn': ?resourceShareArn,
    };
  }

  factory ResourceAssociationState.fromMap(Map<String, dynamic> map) {
    return ResourceAssociationState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: map['resourceArn'] == null ? null : ((map['resourceArn'] as String).input()).input(),
      resourceShareArn: map['resourceShareArn'] == null ? null : ((map['resourceShareArn'] as String).input()).input(),
    );
  }
}

