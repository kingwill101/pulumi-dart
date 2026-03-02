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
  PipelineResponse({
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
      exporters: ((map['exporters'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      processors: map['processors'] == null ? null : ((map['processors']! as List).cast<String>()).input(),
      receivers: ((map['receivers'] as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

