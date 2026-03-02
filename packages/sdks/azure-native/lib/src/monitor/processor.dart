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
  Processor({
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
      batch: map['batch'] == null ? null : (BatchProcessor.fromMap((map['batch'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

