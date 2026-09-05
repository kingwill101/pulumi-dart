// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TagOptionResourceAssociation resources.
class TagOptionResourceAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the resource.
  final pulumi.Input<String?>? resourceArn;
  /// Creation time of the resource.
  final pulumi.Input<String?>? resourceCreatedTime;
  /// Description of the resource.
  final pulumi.Input<String?>? resourceDescription;
  /// Resource identifier.
  final pulumi.Input<String?>? resourceId;
  /// Description of the resource.
  final pulumi.Input<String?>? resourceName;
  /// Tag Option identifier.
  final pulumi.Input<String?>? tagOptionId;

  /// Creates a new [TagOptionResourceAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource.
  /// [resourceCreatedTime] Creation time of the resource.
  /// [resourceDescription] Description of the resource.
  /// [resourceId] Resource identifier.
  /// [resourceName] Description of the resource.
  /// [tagOptionId] Tag Option identifier.
  const TagOptionResourceAssociationState({
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
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceCreatedTime: (() { final guardedValue = map['resourceCreatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceDescription: (() { final guardedValue = map['resourceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagOptionId: (() { final guardedValue = map['tagOptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
