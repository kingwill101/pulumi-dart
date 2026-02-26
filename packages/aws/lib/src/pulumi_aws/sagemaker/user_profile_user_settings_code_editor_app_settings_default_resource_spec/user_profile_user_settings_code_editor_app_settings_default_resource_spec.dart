// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec {
  /// The instance type that the image version runs on.. For valid values see [SageMaker AI Instance Types](https://docs.aws.amazon.com/sagemaker/latest/dg/notebooks-available-instance-types.html).
  final String? instanceType;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  final String? lifecycleConfigArn;

  /// The ARN of the SageMaker AI image that the image version belongs to.
  final String? sagemakerImageArn;

  /// The SageMaker AI Image Version Alias.
  final String? sagemakerImageVersionAlias;

  /// The ARN of the image version created on the instance.
  final String? sagemakerImageVersionArn;

  UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec({
    this.instanceType,
    this.lifecycleConfigArn,
    this.sagemakerImageArn,
    this.sagemakerImageVersionAlias,
    this.sagemakerImageVersionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final lifecycleConfigArnValue = lifecycleConfigArn;
    if (lifecycleConfigArnValue != null) {
      map['lifecycleConfigArn'] = lifecycleConfigArnValue;
    }
    final sagemakerImageArnValue = sagemakerImageArn;
    if (sagemakerImageArnValue != null) {
      map['sagemakerImageArn'] = sagemakerImageArnValue;
    }
    final sagemakerImageVersionAliasValue = sagemakerImageVersionAlias;
    if (sagemakerImageVersionAliasValue != null) {
      map['sagemakerImageVersionAlias'] = sagemakerImageVersionAliasValue;
    }
    final sagemakerImageVersionArnValue = sagemakerImageVersionArn;
    if (sagemakerImageVersionArnValue != null) {
      map['sagemakerImageVersionArn'] = sagemakerImageVersionArnValue;
    }
    return map;
  }

  factory UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCodeEditorAppSettingsDefaultResourceSpec(
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      lifecycleConfigArn: map['lifecycleConfigArn'] == null
          ? null
          : map['lifecycleConfigArn'] as String,
      sagemakerImageArn: map['sagemakerImageArn'] == null
          ? null
          : map['sagemakerImageArn'] as String,
      sagemakerImageVersionAlias: map['sagemakerImageVersionAlias'] == null
          ? null
          : map['sagemakerImageVersionAlias'] as String,
      sagemakerImageVersionArn: map['sagemakerImageVersionArn'] == null
          ? null
          : map['sagemakerImageVersionArn'] as String,
    );
  }
}
