// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_reference.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';

/// Power query sink.
class PowerQuerySink {
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
  /// Rejected data linked service reference.
  final pulumi.Input<LinkedServiceReference>? rejectedDataLinkedService;
  /// Schema linked service reference.
  final pulumi.Input<LinkedServiceReference>? schemaLinkedService;
  /// sink script.
  final pulumi.Input<String>? script;

  /// Creates a new [PowerQuerySink].
  /// [dataset] Dataset reference.
  /// [description] Transformation description.
  /// [flowlet] Flowlet Reference
  /// [linkedService] Linked service reference.
  /// [name] Transformation name.
  /// [rejectedDataLinkedService] Rejected data linked service reference.
  /// [schemaLinkedService] Schema linked service reference.
  /// [script] sink script.
  const PowerQuerySink({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
    this.rejectedDataLinkedService,
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
      'rejectedDataLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(rejectedDataLinkedService, (value) => value.toMap()),
      'schemaLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(schemaLinkedService, (value) => value.toMap()),
      'script': ?script,
    };
  }

  factory PowerQuerySink.fromMap(Map<String, dynamic> map) {
    return PowerQuerySink(
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowlet: (() { final guardedValue = map['flowlet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataFlowReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedService: (() { final guardedValue = map['linkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      rejectedDataLinkedService: (() { final guardedValue = map['rejectedDataLinkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schemaLinkedService: (() { final guardedValue = map['schemaLinkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
