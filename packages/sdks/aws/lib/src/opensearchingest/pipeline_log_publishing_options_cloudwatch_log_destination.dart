// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineLogPublishingOptionsCloudwatchLogDestination {
  /// The name of the CloudWatch Logs group to send pipeline logs to. You can specify an existing log group or create a new one. For example, /aws/OpenSearchService/IngestionService/my-pipeline.
  final pulumi.Input<String> logGroup;

  /// Creates a new [PipelineLogPublishingOptionsCloudwatchLogDestination].
  /// [logGroup] The name of the CloudWatch Logs group to send pipeline logs to. You can specify an existing log group or create a new one. For example, /aws/OpenSearchService/IngestionService/my-pipeline.
  const PipelineLogPublishingOptionsCloudwatchLogDestination({
    required this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroup': logGroup,
    };
  }

  factory PipelineLogPublishingOptionsCloudwatchLogDestination.fromMap(Map<String, dynamic> map) {
    return PipelineLogPublishingOptionsCloudwatchLogDestination(
      logGroup: pulumi.Input.fromValue(map['logGroup'] as String),
    );
  }
}
