// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResourceSpec
class ResourceSpec {
  /// The instance type that the image version runs on.
  final String? instanceType;
  /// The ARN of the SageMaker image that the image version belongs to.
  final String? sageMakerImageArn;
  /// The ARN of the image version created on the instance.
  final String? sageMakerImageVersionArn;

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
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      sageMakerImageArn: map['sageMakerImageArn'] == null ? null : map['sageMakerImageArn'] as String,
      sageMakerImageVersionArn: map['sageMakerImageVersionArn'] == null ? null : map['sageMakerImageVersionArn'] as String,
    );
  }
}

