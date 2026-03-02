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
    this.region,
    this.resourceArn,
    this.resourceCreatedTime,
    this.resourceDescription,
    this.resourceId,
    this.resourceName,
    this.tagOptionId,
  });

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
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: map['resourceArn'] == null ? null : ((map['resourceArn'] as String).input()).input(),
      resourceCreatedTime: map['resourceCreatedTime'] == null ? null : ((map['resourceCreatedTime'] as String).input()).input(),
      resourceDescription: map['resourceDescription'] == null ? null : ((map['resourceDescription'] as String).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      resourceName: map['resourceName'] == null ? null : ((map['resourceName'] as String).input()).input(),
      tagOptionId: map['tagOptionId'] == null ? null : ((map['tagOptionId'] as String).input()).input(),
    );
  }
}

