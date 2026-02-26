// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration {
  /// The AWS Fargate platform version where the jobs are running. A platform version is specified only for jobs that are running on Fargate resources.
  final String platformVersion;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration({
    required this.platformVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['platformVersion'] = platformVersion;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerFargatePlatformConfiguration(
      platformVersion: map['platformVersion'] as String,
    );
  }
}
