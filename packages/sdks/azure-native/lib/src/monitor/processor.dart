// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_processor.dart';

/// Processor Info.
class Processor {
  /// Batch processor configurations.
  final pulumi.Input<BatchProcessor>? batch;
  /// The name of processor.
  final pulumi.Input<String> name;
  /// The type of processor.
  final pulumi.Input<String> type;

  /// Creates a new [Processor].
  /// [batch] Batch processor configurations.
  /// [name] The name of processor.
  /// [type] The type of processor.
  const Processor({
    this.batch,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batch': ?pulumi.Input.mapOptionalInputValue<BatchProcessor, Map<String, dynamic>>(batch, (value) => value.toMap()),
      'name': name,
      'type': type,
    };
  }

  factory Processor.fromMap(Map<String, dynamic> map) {
    return Processor(
      batch: (() { final guardedValue = map['batch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchProcessor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
