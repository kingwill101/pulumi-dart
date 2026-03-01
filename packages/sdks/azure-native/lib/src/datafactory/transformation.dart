// ignore_for_file: unused_element, unnecessary_cast

import 'data_flow_reference.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';

/// A data flow transformation.
class Transformation {
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

  /// Creates a new [Transformation].
  /// [dataset] Dataset reference.
  /// [description] Transformation description.
  /// [flowlet] Flowlet Reference
  /// [linkedService] Linked service reference.
  /// [name] Transformation name.
  Transformation({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset == null ? null : dataset!.toMap(),
      'description': ?description,
      'flowlet': ?flowlet == null ? null : flowlet!.toMap(),
      'linkedService': ?linkedService == null ? null : linkedService!.toMap(),
      'name': name,
    };
  }

  factory Transformation.fromMap(Map<String, dynamic> map) {
    return Transformation(
      dataset: map['dataset'] == null ? null : DatasetReference.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      flowlet: map['flowlet'] == null ? null : DataFlowReference.fromMap((map['flowlet'] as Map).cast<String, dynamic>()),
      linkedService: map['linkedService'] == null ? null : LinkedServiceReference.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

