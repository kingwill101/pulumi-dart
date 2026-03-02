// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_reference.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';

/// Power query source.
class PowerQuerySource {
  /// Dataset reference.
  final pulumi.Input<DatasetReference>? dataset;
  /// Transformation description.
  final pulumi.Input<String>? description;
  /// Flowlet Reference
  final pulumi.Input<DataFlowReference>? flowlet;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedService;
  /// Transformation name.
  final pulumi.Input<String> name;
  /// Schema linked service reference.
  final pulumi.Input<LinkedServiceReference>? schemaLinkedService;
  /// source script.
  final pulumi.Input<String>? script;

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
      'dataset': ?pulumi.Input.mapOptionalInputValue<DatasetReference, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<DataFlowReference, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
      'schemaLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(schemaLinkedService, (value) => value.toMap()),
      'script': ?script,
    };
  }

  factory PowerQuerySource.fromMap(Map<String, dynamic> map) {
    return PowerQuerySource(
      dataset: map['dataset'] == null ? null : (DatasetReference.fromMap((map['dataset'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      flowlet: map['flowlet'] == null ? null : (DataFlowReference.fromMap((map['flowlet'] as Map).cast<String, dynamic>())).input(),
      linkedService: map['linkedService'] == null ? null : (LinkedServiceReference.fromMap((map['linkedService'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : (LinkedServiceReference.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>())).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
    );
  }
}

