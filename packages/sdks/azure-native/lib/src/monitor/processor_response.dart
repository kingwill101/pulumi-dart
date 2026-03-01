// ignore_for_file: unused_element, unnecessary_cast

import 'batch_processor_response.dart';

/// Processor Info.
class ProcessorResponse {
  /// Batch processor configurations.
  final BatchProcessorResponse? batch;
  /// The name of processor.
  final String name;
  /// The type of processor.
  final String type;

  /// Creates a new [ProcessorResponse].
  /// [batch] Batch processor configurations.
  /// [name] The name of processor.
  /// [type] The type of processor.
  ProcessorResponse({
    this.batch,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch': ?batch == null ? null : batch!.toMap(),
      'name': name,
      'type': type,
    };
  }

  factory ProcessorResponse.fromMap(Map<String, dynamic> map) {
    return ProcessorResponse(
      batch: map['batch'] == null ? null : BatchProcessorResponse.fromMap((map['batch'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

