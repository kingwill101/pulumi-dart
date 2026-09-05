// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionJobResourcesClusterConfig {
  /// The number of ML compute instances to use in the model monitoring job. For distributed processing jobs, specify a value greater than 1.
  final pulumi.Input<int> instanceCount;
  /// The ML compute instance type for the processing job.
  final pulumi.Input<String> instanceType;
  /// KMS key that Amazon SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
  final pulumi.Input<String?>? volumeKmsKeyId;
  /// The size of the ML storage volume, in gigabytes, that you want to provision. You must specify sufficient ML storage for your scenario.
  final pulumi.Input<int> volumeSizeInGb;

  /// Creates a new [DataQualityJobDefinitionJobResourcesClusterConfig].
  /// [instanceCount] The number of ML compute instances to use in the model monitoring job. For distributed processing jobs, specify a value greater than 1.
  /// [instanceType] The ML compute instance type for the processing job.
  /// [volumeKmsKeyId] KMS key that Amazon SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
  /// [volumeSizeInGb] The size of the ML storage volume, in gigabytes, that you want to provision. You must specify sufficient ML storage for your scenario.
  const DataQualityJobDefinitionJobResourcesClusterConfig({
    required this.instanceCount,
    required this.instanceType,
    this.volumeKmsKeyId,
    required this.volumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'instanceType': instanceType,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'volumeSizeInGb': volumeSizeInGb,
    };
  }

  factory DataQualityJobDefinitionJobResourcesClusterConfig.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionJobResourcesClusterConfig(
      instanceCount: pulumi.Input.fromValue((map['instanceCount'] as num).toInt()),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInGb: pulumi.Input.fromValue((map['volumeSizeInGb'] as num).toInt()),
    );
  }
}
