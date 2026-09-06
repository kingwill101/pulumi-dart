// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_reference.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';

/// A data flow transformation.
class Transformation {
  /// Dataset reference.
  final pulumi.Input<DatasetReference?>? dataset;
  /// Transformation description.
  final pulumi.Input<String?>? description;
  /// Flowlet Reference
  final pulumi.Input<DataFlowReference?>? flowlet;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference?>? linkedService;
  /// Transformation name.
  final pulumi.Input<String> name;

  /// Creates a new [Transformation].
  /// [dataset] Dataset reference.
  /// [description] Transformation description.
  /// [flowlet] Flowlet Reference
  /// [linkedService] Linked service reference.
  /// [name] Transformation name.
  const Transformation({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?pulumi.Input.mapOptionalInputValue<DatasetReference, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<DataFlowReference, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
    };
  }

  factory Transformation.fromMap(Map<String, dynamic> map) {
    return Transformation(
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowlet: (() { final guardedValue = map['flowlet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataFlowReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedService: (() { final guardedValue = map['linkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
