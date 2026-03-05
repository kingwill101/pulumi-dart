// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration {
  /// The AWS Fargate platform version where the jobs are running. A platform version is specified only for jobs that are running on Fargate resources.
  final pulumi.Input<String> platformVersion;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration].
  /// [platformVersion] The AWS Fargate platform version where the jobs are running. A platform version is specified only for jobs that are running on Fargate resources.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration({
    required this.platformVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platformVersion': platformVersion,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration(
      platformVersion: pulumi.Input.fromValue(map['platformVersion'] as String),
    );
  }
}

