// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Resource resources.
class ResourceState {
  /// Name or ARN of the resource group to add resources to.
  final pulumi.Input<String>? groupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the resource to be added to the group.
  final pulumi.Input<String>? resourceArn;
  /// The resource type of a resource, such as `AWS::EC2::Instance`.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [ResourceState].
  /// [groupArn] Name or ARN of the resource group to add resources to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource to be added to the group.
  /// [resourceType] The resource type of a resource, such as `AWS::EC2::Instance`.
  ResourceState({
    this.groupArn,
    this.region,
    this.resourceArn,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupArn': ?groupArn,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'resourceType': ?resourceType,
    };
  }

  factory ResourceState.fromMap(Map<String, dynamic> map) {
    return ResourceState(
      groupArn: map['groupArn'] == null ? null : ((map['groupArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: map['resourceArn'] == null ? null : ((map['resourceArn'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
    );
  }
}

