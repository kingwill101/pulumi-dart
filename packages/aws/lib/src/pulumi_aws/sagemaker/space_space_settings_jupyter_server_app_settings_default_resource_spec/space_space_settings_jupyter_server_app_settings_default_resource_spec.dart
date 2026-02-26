// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec {
  /// The instance type.
  final String? instanceType;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  final String? lifecycleConfigArn;

  /// The Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.
  final String? sagemakerImageArn;

  /// The SageMaker AI Image Version Alias.
  final String? sagemakerImageVersionAlias;

  /// The ARN of the image version created on the instance.
  final String? sagemakerImageVersionArn;

  SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec({
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

  factory SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec(
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
