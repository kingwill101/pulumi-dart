// ignore_for_file: unused_element, unnecessary_cast

import 'data_flow_reference_response.dart';
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';

/// Power query source.
class PowerQuerySourceResponse {
  /// Dataset reference.
  final DatasetReferenceResponse? dataset;
  /// Transformation description.
  final String? description;
  /// Flowlet Reference
  final DataFlowReferenceResponse? flowlet;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedService;
  /// Transformation name.
  final String name;
  /// Schema linked service reference.
  final LinkedServiceReferenceResponse? schemaLinkedService;
  /// source script.
  final String? script;

  /// Creates a new [PowerQuerySourceResponse].
  /// [dataset] Dataset reference.
  /// [description] Transformation description.
  /// [flowlet] Flowlet Reference
  /// [linkedService] Linked service reference.
  /// [name] Transformation name.
  /// [schemaLinkedService] Schema linked service reference.
  /// [script] source script.
  PowerQuerySourceResponse({
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

  factory PowerQuerySourceResponse.fromMap(Map<String, dynamic> map) {
    return PowerQuerySourceResponse(
      dataset: map['dataset'] == null ? null : DatasetReferenceResponse.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      flowlet: map['flowlet'] == null ? null : DataFlowReferenceResponse.fromMap((map['flowlet'] as Map).cast<String, dynamic>()),
      linkedService: map['linkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      schemaLinkedService: map['schemaLinkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>()),
      script: map['script'] == null ? null : map['script'] as String,
    );
  }
}

