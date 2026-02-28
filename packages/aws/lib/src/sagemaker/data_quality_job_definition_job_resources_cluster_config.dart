// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionJobResourcesClusterConfig {
  /// The number of ML compute instances to use in the model monitoring job. For distributed processing jobs, specify a value greater than 1.
  final int instanceCount;

  /// The ML compute instance type for the processing job.
  final String instanceType;

  /// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
  final String? volumeKmsKeyId;

  /// The size of the ML storage volume, in gigabytes, that you want to provision. You must specify sufficient ML storage for your scenario.
  final int volumeSizeInGb;

  /// Creates a new [DataQualityJobDefinitionJobResourcesClusterConfig].
  /// [instanceCount] The number of ML compute instances to use in the model monitoring job. For distributed processing jobs, specify a value greater than 1.
  /// [instanceType] The ML compute instance type for the processing job.
  /// [volumeKmsKeyId] The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
  /// [volumeSizeInGb] The size of the ML storage volume, in gigabytes, that you want to provision. You must specify sufficient ML storage for your scenario.
  DataQualityJobDefinitionJobResourcesClusterConfig({
    required this.instanceCount,
    required this.instanceType,
    this.volumeKmsKeyId,
    required this.volumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceCount'] = instanceCount;
    map['instanceType'] = instanceType;
    final volumeKmsKeyIdValue = volumeKmsKeyId;
    if (volumeKmsKeyIdValue != null) {
      map['volumeKmsKeyId'] = volumeKmsKeyIdValue;
    }
    map['volumeSizeInGb'] = volumeSizeInGb;
    return map;
  }

  factory DataQualityJobDefinitionJobResourcesClusterConfig.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionJobResourcesClusterConfig(
      instanceCount: map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      volumeKmsKeyId: map['volumeKmsKeyId'] == null
          ? null
          : map['volumeKmsKeyId'] as String,
      volumeSizeInGb: map['volumeSizeInGb'] as int,
    );
  }
}
