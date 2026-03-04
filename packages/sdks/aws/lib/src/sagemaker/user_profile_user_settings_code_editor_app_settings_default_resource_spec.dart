// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec {
  /// The instance type that the image version runs on.. For valid values see [SageMaker AI Instance Types](https://docs.aws.amazon.com/sagemaker/latest/dg/notebooks-available-instance-types.html).
  final pulumi.Input<String>? instanceType;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  final pulumi.Input<String>? lifecycleConfigArn;

  /// The ARN of the SageMaker AI image that the image version belongs to.
  final pulumi.Input<String>? sagemakerImageArn;

  /// The SageMaker AI Image Version Alias.
  final pulumi.Input<String>? sagemakerImageVersionAlias;

  /// The ARN of the image version created on the instance.
  final pulumi.Input<String>? sagemakerImageVersionArn;

  /// Creates a new [UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec].
  /// [instanceType] The instance type that the image version runs on.. For valid values see [SageMaker AI Instance Types](https://docs.aws.amazon.com/sagemaker/latest/dg/notebooks-available-instance-types.html).
  /// [lifecycleConfigArn] The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  /// [sagemakerImageArn] The ARN of the SageMaker AI image that the image version belongs to.
  /// [sagemakerImageVersionAlias] The SageMaker AI Image Version Alias.
  /// [sagemakerImageVersionArn] The ARN of the image version created on the instance.
  UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'lifecycleConfigArn': ?lifecycleConfigArn,
      'sagemakerImageArn': ?sagemakerImageArn,
      'sagemakerImageVersionAlias': ?sagemakerImageVersionAlias,
      'sagemakerImageVersionArn': ?sagemakerImageVersionArn,
    };
  }

  factory UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec(
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lifecycleConfigArn: (() {
        final guardedValue = map['lifecycleConfigArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sagemakerImageArn: (() {
        final guardedValue = map['sagemakerImageArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sagemakerImageVersionAlias: (() {
        final guardedValue = map['sagemakerImageVersionAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sagemakerImageVersionArn: (() {
        final guardedValue = map['sagemakerImageVersionArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
