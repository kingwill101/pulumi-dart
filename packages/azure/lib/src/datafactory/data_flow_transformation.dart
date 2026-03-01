// ignore_for_file: unused_element, unnecessary_cast

import 'data_flow_transformation_dataset.dart';
import 'data_flow_transformation_flowlet.dart';
import 'data_flow_transformation_linked_service.dart';

class DataFlowTransformation {
  /// A `dataset` block as defined below.
  final DataFlowTransformationDataset? dataset;
  /// The description for the Data Flow transformation.
  final String? description;
  /// A `flowlet` block as defined below.
  final DataFlowTransformationFlowlet? flowlet;
  /// A `linked_service` block as defined below.
  final DataFlowTransformationLinkedService? linkedService;
  /// The name for the Data Flow transformation.
  final String name;

  /// Creates a new [DataFlowTransformation].
  /// [dataset] A `dataset` block as defined below.
  /// [description] The description for the Data Flow transformation.
  /// [flowlet] A `flowlet` block as defined below.
  /// [linkedService] A `linked_service` block as defined below.
  /// [name] The name for the Data Flow transformation.
  DataFlowTransformation({
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

  factory DataFlowTransformation.fromMap(Map<String, dynamic> map) {
    return DataFlowTransformation(
      dataset: map['dataset'] == null ? null : DataFlowTransformationDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      flowlet: map['flowlet'] == null ? null : DataFlowTransformationFlowlet.fromMap((map['flowlet'] as Map).cast<String, dynamic>()),
      linkedService: map['linkedService'] == null ? null : DataFlowTransformationLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

