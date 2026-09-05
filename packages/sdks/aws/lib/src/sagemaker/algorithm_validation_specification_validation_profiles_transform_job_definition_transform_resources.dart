// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources {
  /// Number of transform instances.
  final pulumi.Input<int> instanceCount;
  /// Transform instance type.
  final pulumi.Input<String> instanceType;
  /// Transform AMI version.
  final pulumi.Input<String?>? transformAmiVersion;
  /// KMS key ID used to encrypt the transform volume.
  final pulumi.Input<String?>? volumeKmsKeyId;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources].
  /// [instanceCount] Number of transform instances.
  /// [instanceType] Transform instance type.
  /// [transformAmiVersion] Transform AMI version.
  /// [volumeKmsKeyId] KMS key ID used to encrypt the transform volume.
  const AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources({
    required this.instanceCount,
    required this.instanceType,
    this.transformAmiVersion,
    this.volumeKmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'instanceType': instanceType,
      'transformAmiVersion': ?transformAmiVersion,
      'volumeKmsKeyId': ?volumeKmsKeyId,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources(
      instanceCount: pulumi.Input.fromValue((map['instanceCount'] as num).toInt()),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      transformAmiVersion: (() { final guardedValue = map['transformAmiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
