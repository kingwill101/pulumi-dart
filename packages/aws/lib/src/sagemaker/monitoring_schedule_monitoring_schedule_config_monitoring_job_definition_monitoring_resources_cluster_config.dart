// ignore_for_file: unused_element, unnecessary_cast

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig {
  /// Number of ML compute instances to use in the model monitoring job.
  final int instanceCount;

  /// ML compute instance type for the processing job.
  final String instanceType;

  /// AWS KMS key that Amazon SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
  final String? volumeKmsKeyId;

  /// size of the ML storage volume, in gigabytes, to provision.
  final int volumeSizeInGb;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig].
  /// [instanceCount] Number of ML compute instances to use in the model monitoring job.
  /// [instanceType] ML compute instance type for the processing job.
  /// [volumeKmsKeyId] AWS KMS key that Amazon SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
  /// [volumeSizeInGb] size of the ML storage volume, in gigabytes, to provision.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig({
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

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig(
      instanceCount: map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      volumeKmsKeyId: map['volumeKmsKeyId'] == null
          ? null
          : map['volumeKmsKeyId'] as String,
      volumeSizeInGb: map['volumeSizeInGb'] as int,
    );
  }
}
