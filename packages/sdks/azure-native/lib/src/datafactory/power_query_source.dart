// ignore_for_file: unused_element, unnecessary_cast

import 'data_flow_reference.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';

/// Power query source.
class PowerQuerySource {
  /// Dataset reference.
  final DatasetReference? dataset;
  /// Transformation description.
  final String? description;
  /// Flowlet Reference
  final DataFlowReference? flowlet;
  /// Linked service reference.
  final LinkedServiceReference? linkedService;
  /// Transformation name.
  final String name;
  /// Schema linked service reference.
  final LinkedServiceReference? schemaLinkedService;
  /// source script.
  final String? script;

  /// Creates a new [PowerQuerySource].
  /// [dataset] Dataset reference.
  /// [description] Transformation description.
  /// [flowlet] Flowlet Reference
  /// [linkedService] Linked service reference.
  /// [name] Transformation name.
  /// [schemaLinkedService] Schema linked service reference.
  /// [script] source script.
  PowerQuerySource({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
    this.schemaLinkedService,
    this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset == null ? null : dataset!.toMap(),
      'description': ?description,
      'flowlet': ?flowlet == null ? null : flowlet!.toMap(),
      'linkedService': ?linkedService == null ? null : linkedService!.toMap(),
      'name': name,
      'schemaLinkedService': ?schemaLinkedService == null ? null : schemaLinkedService!.toMap(),
      'script': ?script,
    };
  }

  factory PowerQuerySource.fromMap(Map<String, dynamic> map) {
    return PowerQuerySource(
      dataset: map['dataset'] == null ? null : DatasetReference.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      flowlet: map['flowlet'] == null ? null : DataFlowReference.fromMap((map['flowlet'] as Map).cast<String, dynamic>()),
      linkedService: map['linkedService'] == null ? null : LinkedServiceReference.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      schemaLinkedService: map['schemaLinkedService'] == null ? null : LinkedServiceReference.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>()),
      script: map['script'] == null ? null : map['script'] as String,
    );
  }
}

