// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelContainerModelDataSourceS3DataSourceHubAccessConfig {
  /// Versioned ARN of the private hub content to deploy, such as the `versionedHubContentArn` of an `aws.sagemaker.HubContentReference`. `s3Uri` must match the hub content's hosting artifact URI.
  final pulumi.Input<String> hubContentArn;

  /// Creates a new [ModelContainerModelDataSourceS3DataSourceHubAccessConfig].
  /// [hubContentArn] Versioned ARN of the private hub content to deploy, such as the `versionedHubContentArn` of an `aws.sagemaker.HubContentReference`. `s3Uri` must match the hub content's hosting artifact URI.
  const ModelContainerModelDataSourceS3DataSourceHubAccessConfig({
    required this.hubContentArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubContentArn': hubContentArn,
    };
  }

  factory ModelContainerModelDataSourceS3DataSourceHubAccessConfig.fromMap(Map<String, dynamic> map) {
    return ModelContainerModelDataSourceS3DataSourceHubAccessConfig(
      hubContentArn: pulumi.Input.fromValue(map['hubContentArn'] as String),
    );
  }
}
