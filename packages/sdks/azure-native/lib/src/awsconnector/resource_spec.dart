// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceSpec
class ResourceSpec {
  /// The instance type that the image version runs on.
  final pulumi.Input<String>? instanceType;
  /// The ARN of the SageMaker image that the image version belongs to.
  final pulumi.Input<String>? sageMakerImageArn;
  /// The ARN of the image version created on the instance.
  final pulumi.Input<String>? sageMakerImageVersionArn;

  /// Creates a new [ResourceSpec].
  /// [instanceType] The instance type that the image version runs on.
  /// [sageMakerImageArn] The ARN of the SageMaker image that the image version belongs to.
  /// [sageMakerImageVersionArn] The ARN of the image version created on the instance.
  ResourceSpec({
    this.instanceType,
    this.sageMakerImageArn,
    this.sageMakerImageVersionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'sageMakerImageArn': ?sageMakerImageArn,
      'sageMakerImageVersionArn': ?sageMakerImageVersionArn,
    };
  }

  factory ResourceSpec.fromMap(Map<String, dynamic> map) {
    return ResourceSpec(
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sageMakerImageArn: (() { final guardedValue = map['sageMakerImageArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sageMakerImageVersionArn: (() { final guardedValue = map['sageMakerImageVersionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

