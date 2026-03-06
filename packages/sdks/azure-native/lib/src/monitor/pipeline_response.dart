// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pipeline Info.
class PipelineResponse {
  /// Reference to exporters configured for the pipeline.
  final pulumi.Input<List<String>> exporters;
  /// Name of the pipeline.
  final pulumi.Input<String> name;
  /// Reference to processors configured for the pipeline.
  final pulumi.Input<List<String>>? processors;
  /// Reference to receivers configured for the pipeline.
  final pulumi.Input<List<String>> receivers;
  /// The type of pipeline
  final pulumi.Input<String> type;

  /// Creates a new [PipelineResponse].
  /// [exporters] Reference to exporters configured for the pipeline.
  /// [name] Name of the pipeline.
  /// [processors] Reference to processors configured for the pipeline.
  /// [receivers] Reference to receivers configured for the pipeline.
  /// [type] The type of pipeline
  const PipelineResponse({
    required this.exporters,
    required this.name,
    this.processors,
    required this.receivers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exporters': exporters,
      'name': name,
      'processors': ?processors,
      'receivers': receivers,
      'type': type,
    };
  }

  factory PipelineResponse.fromMap(Map<String, dynamic> map) {
    return PipelineResponse(
      exporters: pulumi.Input.fromValue((map['exporters'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      processors: (() { final guardedValue = map['processors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      receivers: pulumi.Input.fromValue((map['receivers'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

