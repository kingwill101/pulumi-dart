// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings {
  /// An array of Amazon Resource Names (ARNs) of the IAM roles that the execution role of SageMaker AI can assume for performing operations or tasks related to Amazon EMR clusters or Amazon EMR Serverless applications. These roles define the permissions and access policies required when performing Amazon EMR-related operations, such as listing, connecting to, or terminating Amazon EMR clusters or Amazon EMR Serverless applications. They are typically used in cross-account access scenarios, where the Amazon EMR resources (clusters or serverless applications) are located in a different AWS account than the SageMaker AI domain.
  final List<String>? assumableRoleArns;

  /// An array of Amazon Resource Names (ARNs) of the IAM roles used by the Amazon EMR cluster instances or job execution environments to access other AWS services and resources needed during the runtime of your Amazon EMR or Amazon EMR Serverless workloads, such as Amazon S3 for data access, Amazon CloudWatch for logging, or other AWS services based on the particular workload requirements.
  final List<String>? executionRoleArns;

  DomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings({
    this.assumableRoleArns,
    this.executionRoleArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assumableRoleArnsValue = assumableRoleArns;
    if (assumableRoleArnsValue != null) {
      map['assumableRoleArns'] = assumableRoleArnsValue;
    }
    final executionRoleArnsValue = executionRoleArns;
    if (executionRoleArnsValue != null) {
      map['executionRoleArns'] = executionRoleArnsValue;
    }
    return map;
  }

  factory DomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterLabAppSettingsEmrSettings(
      assumableRoleArns: map['assumableRoleArns'] == null
          ? null
          : (map['assumableRoleArns'] as List).cast<String>(),
      executionRoleArns: map['executionRoleArns'] == null
          ? null
          : (map['executionRoleArns'] as List).cast<String>(),
    );
  }
}
