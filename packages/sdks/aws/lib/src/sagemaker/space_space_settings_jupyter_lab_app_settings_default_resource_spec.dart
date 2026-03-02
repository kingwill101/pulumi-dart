// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec {
  /// The instance type.
  final pulumi.Input<String>? instanceType;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  final pulumi.Input<String>? lifecycleConfigArn;
  /// The Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.
  final pulumi.Input<String>? sagemakerImageArn;
  /// The SageMaker AI Image Version Alias.
  final pulumi.Input<String>? sagemakerImageVersionAlias;
  /// The ARN of the image version created on the instance.
  final pulumi.Input<String>? sagemakerImageVersionArn;

  /// Creates a new [SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec].
  /// [instanceType] The instance type.
  /// [lifecycleConfigArn] The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  /// [sagemakerImageArn] The Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.
  /// [sagemakerImageVersionAlias] The SageMaker AI Image Version Alias.
  /// [sagemakerImageVersionArn] The ARN of the image version created on the instance.
  SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec({
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

  factory SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsJupyterLabAppSettingsDefaultResourceSpec(
      instanceType: map['instanceType'] == null ? null : ((map['instanceType'] as String).input()).input(),
      lifecycleConfigArn: map['lifecycleConfigArn'] == null ? null : ((map['lifecycleConfigArn'] as String).input()).input(),
      sagemakerImageArn: map['sagemakerImageArn'] == null ? null : ((map['sagemakerImageArn'] as String).input()).input(),
      sagemakerImageVersionAlias: map['sagemakerImageVersionAlias'] == null ? null : ((map['sagemakerImageVersionAlias'] as String).input()).input(),
      sagemakerImageVersionArn: map['sagemakerImageVersionArn'] == null ? null : ((map['sagemakerImageVersionArn'] as String).input()).input(),
    );
  }
}

