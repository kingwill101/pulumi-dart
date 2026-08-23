// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_reference_response.dart';
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';

/// A data flow transformation.
class TransformationResponse {
  /// Dataset reference.
  final pulumi.Input<DatasetReferenceResponse>? dataset;
  /// Transformation description.
  final pulumi.Input<String>? description;
  /// Flowlet Reference
  final pulumi.Input<DataFlowReferenceResponse>? flowlet;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedService;
  /// Transformation name.
  final pulumi.Input<String> name;

  /// Creates a new [TransformationResponse].
  /// [dataset] Dataset reference.
  /// [description] Transformation description.
  /// [flowlet] Flowlet Reference
  /// [linkedService] Linked service reference.
  /// [name] Transformation name.
  const TransformationResponse({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?pulumi.Input.mapOptionalInputValue<DatasetReferenceResponse, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<DataFlowReferenceResponse, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
    };
  }

  factory TransformationResponse.fromMap(Map<String, dynamic> map) {
    return TransformationResponse(
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowlet: (() { final guardedValue = map['flowlet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataFlowReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedService: (() { final guardedValue = map['linkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
