// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec {
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

  /// Creates a new [SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec].
  /// [instanceType] The instance type.
  /// [lifecycleConfigArn] The Amazon Resource Name (ARN) of the Lifecycle Configuration attached to the Resource.
  /// [sagemakerImageArn] The Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.
  /// [sagemakerImageVersionAlias] The SageMaker AI Image Version Alias.
  /// [sagemakerImageVersionArn] The ARN of the image version created on the instance.
  const SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec({
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

  factory SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsCodeEditorAppSettingsDefaultResourceSpec(
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleConfigArn: (() { final guardedValue = map['lifecycleConfigArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sagemakerImageArn: (() { final guardedValue = map['sagemakerImageArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sagemakerImageVersionAlias: (() { final guardedValue = map['sagemakerImageVersionAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sagemakerImageVersionArn: (() { final guardedValue = map['sagemakerImageVersionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

