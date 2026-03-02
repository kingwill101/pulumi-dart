// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_processor_response.dart';

/// Processor Info.
class ProcessorResponse {
  /// Batch processor configurations.
  final pulumi.Input<BatchProcessorResponse>? batch;
  /// The name of processor.
  final pulumi.Input<String> name;
  /// The type of processor.
  final pulumi.Input<String> type;

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
      'batch': ?pulumi.Input.mapOptionalInputValue<BatchProcessorResponse, Map<String, dynamic>>(batch, (value) => value.toMap()),
      'name': name,
      'type': type,
    };
  }

  factory ProcessorResponse.fromMap(Map<String, dynamic> map) {
    return ProcessorResponse(
      batch: map['batch'] == null ? null : (BatchProcessorResponse.fromMap((map['batch']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

