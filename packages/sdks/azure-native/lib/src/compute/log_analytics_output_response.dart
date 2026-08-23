// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LogAnalytics output properties
class LogAnalyticsOutputResponse {
  /// Output file Uri path to blob container.
  final pulumi.Input<String> output;

  /// Creates a new [LogAnalyticsOutputResponse].
  /// [output] Output file Uri path to blob container.
  const LogAnalyticsOutputResponse({
    required this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'output': output,
    };
  }

  factory LogAnalyticsOutputResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsOutputResponse(
      output: pulumi.Input.fromValue(map['output'] as String),
    );
  }
}
