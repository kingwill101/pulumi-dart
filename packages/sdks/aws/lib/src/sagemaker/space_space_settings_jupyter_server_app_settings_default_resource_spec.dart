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

  /// Creates a new [SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec].
  /// [instanceType] The instance type.
  /// [lifecycleConfigArn] The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  /// [sagemakerImageArn] The Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.
  /// [sagemakerImageVersionAlias] The SageMaker AI Image Version Alias.
  /// [sagemakerImageVersionArn] The ARN of the image version created on the instance.
  SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec({
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

  factory SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec(
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      lifecycleConfigArn: map['lifecycleConfigArn'] == null ? null : map['lifecycleConfigArn'] as String,
      sagemakerImageArn: map['sagemakerImageArn'] == null ? null : map['sagemakerImageArn'] as String,
      sagemakerImageVersionAlias: map['sagemakerImageVersionAlias'] == null ? null : map['sagemakerImageVersionAlias'] as String,
      sagemakerImageVersionArn: map['sagemakerImageVersionArn'] == null ? null : map['sagemakerImageVersionArn'] as String,
    );
  }
}

