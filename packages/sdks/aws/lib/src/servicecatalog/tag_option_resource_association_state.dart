// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TagOptionResourceAssociation resources.
class TagOptionResourceAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the resource.
  final pulumi.Input<String>? resourceArn;
  /// Creation time of the resource.
  final pulumi.Input<String>? resourceCreatedTime;
  /// Description of the resource.
  final pulumi.Input<String>? resourceDescription;
  /// Resource identifier.
  final pulumi.Input<String>? resourceId;
  /// Description of the resource.
  final pulumi.Input<String>? resourceName;
  /// Tag Option identifier.
  final pulumi.Input<String>? tagOptionId;

  /// Creates a new [TagOptionResourceAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource.
  /// [resourceCreatedTime] Creation time of the resource.
  /// [resourceDescription] Description of the resource.
  /// [resourceId] Resource identifier.
  /// [resourceName] Description of the resource.
  /// [tagOptionId] Tag Option identifier.
  TagOptionResourceAssociationState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? resourceCreatedTime,
    pulumi.Output<String>? resourceDescription,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceName,
    pulumi.Output<String>? tagOptionId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      resourceCreatedTime = pulumi.Input.asOptionalInput<String>(resourceCreatedTime),
      resourceDescription = pulumi.Input.asOptionalInput<String>(resourceDescription),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tagOptionId = pulumi.Input.asOptionalInput<String>(tagOptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': ?resourceArn,
      'resourceCreatedTime': ?resourceCreatedTime,
      'resourceDescription': ?resourceDescription,
      'resourceId': ?resourceId,
      'resourceName': ?resourceName,
      'tagOptionId': ?tagOptionId,
    };
  }

  factory TagOptionResourceAssociationState.fromMap(Map<String, dynamic> map) {
    return TagOptionResourceAssociationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      resourceCreatedTime: map['resourceCreatedTime'] == null ? null : pulumi.Output.create<String>(map['resourceCreatedTime'] as String),
      resourceDescription: map['resourceDescription'] == null ? null : pulumi.Output.create<String>(map['resourceDescription'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      tagOptionId: map['tagOptionId'] == null ? null : pulumi.Output.create<String>(map['tagOptionId'] as String),
    );
  }
}

