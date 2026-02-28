// ignore_for_file: unused_element, unnecessary_cast


class DomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec {
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

  /// Creates a new [DomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec].
  /// [instanceType] The instance type that the image version runs on.. For valid values see [SageMaker AI Instance Types](https://docs.aws.amazon.com/sagemaker/latest/dg/notebooks-available-instance-types.html).
  /// [lifecycleConfigArn] The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  /// [sagemakerImageArn] The ARN of the SageMaker AI image that the image version belongs to.
  /// [sagemakerImageVersionAlias] The SageMaker AI Image Version Alias.
  /// [sagemakerImageVersionArn] The ARN of the image version created on the instance.
  DomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec({
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

  factory DomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterLabAppSettingsDefaultResourceSpec(
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      lifecycleConfigArn: map['lifecycleConfigArn'] == null ? null : map['lifecycleConfigArn'] as String,
      sagemakerImageArn: map['sagemakerImageArn'] == null ? null : map['sagemakerImageArn'] as String,
      sagemakerImageVersionAlias: map['sagemakerImageVersionAlias'] == null ? null : map['sagemakerImageVersionAlias'] as String,
      sagemakerImageVersionArn: map['sagemakerImageVersionArn'] == null ? null : map['sagemakerImageVersionArn'] as String,
    );
  }
}

