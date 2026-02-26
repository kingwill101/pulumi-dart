// ignore_for_file: unused_element, unnecessary_cast

class PipelineLogPublishingOptionsCloudwatchLogDestination {
  /// The name of the CloudWatch Logs group to send pipeline logs to. You can specify an existing log group or create a new one. For example, /aws/OpenSearchService/IngestionService/my-pipeline.
  final String logGroup;

  PipelineLogPublishingOptionsCloudwatchLogDestination({
    required this.logGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroup'] = logGroup;
    return map;
  }

  factory PipelineLogPublishingOptionsCloudwatchLogDestination.fromMap(
      Map<String, dynamic> map) {
    return PipelineLogPublishingOptionsCloudwatchLogDestination(
      logGroup: map['logGroup'] as String,
    );
  }
}
