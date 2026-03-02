// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceSpec
class ResourceSpecResponse {
  /// The instance type that the image version runs on.
  final pulumi.Input<String>? instanceType;
  /// The ARN of the SageMaker image that the image version belongs to.
  final pulumi.Input<String>? sageMakerImageArn;
  /// The ARN of the image version created on the instance.
  final pulumi.Input<String>? sageMakerImageVersionArn;

  /// Creates a new [ResourceSpecResponse].
  /// [instanceType] The instance type that the image version runs on.
  /// [sageMakerImageArn] The ARN of the SageMaker image that the image version belongs to.
  /// [sageMakerImageVersionArn] The ARN of the image version created on the instance.
  ResourceSpecResponse({
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

  factory ResourceSpecResponse.fromMap(Map<String, dynamic> map) {
    return ResourceSpecResponse(
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      sageMakerImageArn: map['sageMakerImageArn'] == null ? null : (map['sageMakerImageArn']! as String).input(),
      sageMakerImageVersionArn: map['sageMakerImageVersionArn'] == null ? null : (map['sageMakerImageVersionArn']! as String).input(),
    );
  }
}

