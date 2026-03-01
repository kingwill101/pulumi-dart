// ignore_for_file: unused_element, unnecessary_cast

import 'batch_processor.dart';

/// Processor Info.
class Processor {
  /// Batch processor configurations.
  final BatchProcessor? batch;
  /// The name of processor.
  final String name;
  /// The type of processor.
  final String type;

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
      'batch': ?batch == null ? null : batch!.toMap(),
      'name': name,
      'type': type,
    };
  }

  factory Processor.fromMap(Map<String, dynamic> map) {
    return Processor(
      batch: map['batch'] == null ? null : BatchProcessor.fromMap((map['batch'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

