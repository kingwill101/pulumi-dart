// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig {
  /// Number of ML compute instances to use in the model monitoring job.
  final pulumi.Input<int> instanceCount;
  /// ML compute instance type for the processing job.
  final pulumi.Input<String> instanceType;
  /// AWS KMS key that Amazon SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
  final pulumi.Input<String>? volumeKmsKeyId;
  /// size of the ML storage volume, in gigabytes, to provision.
  final pulumi.Input<int> volumeSizeInGb;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig].
  /// [instanceCount] Number of ML compute instances to use in the model monitoring job.
  /// [instanceType] ML compute instance type for the processing job.
  /// [volumeKmsKeyId] AWS KMS key that Amazon SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
  /// [volumeSizeInGb] size of the ML storage volume, in gigabytes, to provision.
  const MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig({
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

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig(
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInGb: pulumi.Input.fromValue(map['volumeSizeInGb'] as int),
    );
  }
}

