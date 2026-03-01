// ignore_for_file: unused_element, unnecessary_cast

import 'data_flow_reference_response.dart';
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';

/// Transformation for data flow sink.
class DataFlowSinkResponse {
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
  /// Rejected data linked service reference.
  final LinkedServiceReferenceResponse? rejectedDataLinkedService;
  /// Schema linked service reference.
  final LinkedServiceReferenceResponse? schemaLinkedService;

  /// Creates a new [DataFlowSinkResponse].
  /// [dataset] Dataset reference.
  /// [description] Transformation description.
  /// [flowlet] Flowlet Reference
  /// [linkedService] Linked service reference.
  /// [name] Transformation name.
  /// [rejectedDataLinkedService] Rejected data linked service reference.
  /// [schemaLinkedService] Schema linked service reference.
  DataFlowSinkResponse({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
    this.rejectedDataLinkedService,
    this.schemaLinkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset == null ? null : dataset!.toMap(),
      'description': ?description,
      'flowlet': ?flowlet == null ? null : flowlet!.toMap(),
      'linkedService': ?linkedService == null ? null : linkedService!.toMap(),
      'name': name,
      'rejectedDataLinkedService': ?rejectedDataLinkedService == null ? null : rejectedDataLinkedService!.toMap(),
      'schemaLinkedService': ?schemaLinkedService == null ? null : schemaLinkedService!.toMap(),
    };
  }

  factory DataFlowSinkResponse.fromMap(Map<String, dynamic> map) {
    return DataFlowSinkResponse(
      dataset: map['dataset'] == null ? null : DatasetReferenceResponse.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      flowlet: map['flowlet'] == null ? null : DataFlowReferenceResponse.fromMap((map['flowlet'] as Map).cast<String, dynamic>()),
      linkedService: map['linkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      rejectedDataLinkedService: map['rejectedDataLinkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['rejectedDataLinkedService'] as Map).cast<String, dynamic>()),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

