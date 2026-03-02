// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings {
  /// An array of Amazon Resource Names (ARNs) of the IAM roles that the execution role of SageMaker AI can assume for performing operations or tasks related to Amazon EMR clusters or Amazon EMR Serverless applications. These roles define the permissions and access policies required when performing Amazon EMR-related operations, such as listing, connecting to, or terminating Amazon EMR clusters or Amazon EMR Serverless applications. They are typically used in cross-account access scenarios, where the Amazon EMR resources (clusters or serverless applications) are located in a different AWS account than the SageMaker AI domain.
  final pulumi.Input<List<String>>? assumableRoleArns;
  /// An array of Amazon Resource Names (ARNs) of the IAM roles used by the Amazon EMR cluster instances or job execution environments to access other AWS services and resources needed during the runtime of your Amazon EMR or Amazon EMR Serverless workloads, such as Amazon S3 for data access, Amazon CloudWatch for logging, or other AWS services based on the particular workload requirements.
  final pulumi.Input<List<String>>? executionRoleArns;

  /// Creates a new [DomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings].
  /// [assumableRoleArns] An array of Amazon Resource Names (ARNs) of the IAM roles that the execution role of SageMaker AI can assume for performing operations or tasks related to Amazon EMR clusters or Amazon EMR Serverless applications. These roles define the permissions and access policies required when performing Amazon EMR-related operations, such as listing, connecting to, or terminating Amazon EMR clusters or Amazon EMR Serverless applications. They are typically used in cross-account access scenarios, where the Amazon EMR resources (clusters or serverless applications) are located in a different AWS account than the SageMaker AI domain.
  /// [executionRoleArns] An array of Amazon Resource Names (ARNs) of the IAM roles used by the Amazon EMR cluster instances or job execution environments to access other AWS services and resources needed during the runtime of your Amazon EMR or Amazon EMR Serverless workloads, such as Amazon S3 for data access, Amazon CloudWatch for logging, or other AWS services based on the particular workload requirements.
  DomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings({
    this.assumableRoleArns,
    this.executionRoleArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assumableRoleArns': ?assumableRoleArns,
      'executionRoleArns': ?executionRoleArns,
    };
  }

  factory DomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsJupyterLabAppSettingsEmrSettings(
      assumableRoleArns: map['assumableRoleArns'] == null ? null : (((map['assumableRoleArns'] as List).cast<String>()).input()).input(),
      executionRoleArns: map['executionRoleArns'] == null ? null : (((map['executionRoleArns'] as List).cast<String>()).input()).input(),
    );
  }
}

