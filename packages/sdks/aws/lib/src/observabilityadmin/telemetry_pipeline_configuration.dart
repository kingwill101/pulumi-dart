// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryPipelineConfiguration {
  /// The pipeline configuration body. This is a YAML-encoded string defining the pipeline source, optional processors, and sinks.
  final pulumi.Input<String> body;

  /// Creates a new [TelemetryPipelineConfiguration].
  /// [body] The pipeline configuration body. This is a YAML-encoded string defining the pipeline source, optional processors, and sinks.
  const TelemetryPipelineConfiguration({
    required this.body,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
    };
  }

  factory TelemetryPipelineConfiguration.fromMap(Map<String, dynamic> map) {
    return TelemetryPipelineConfiguration(
      body: pulumi.Input.fromValue(map['body'] as String),
    );
  }
}
