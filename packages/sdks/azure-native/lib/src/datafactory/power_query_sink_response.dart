// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_reference_response.dart';
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';

/// Power query sink.
class PowerQuerySinkResponse {
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
  /// Rejected data linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? rejectedDataLinkedService;
  /// Schema linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? schemaLinkedService;
  /// sink script.
  final pulumi.Input<String>? script;

  /// Creates a new [PowerQuerySinkResponse].
  /// [dataset] Dataset reference.
  /// [description] Transformation description.
  /// [flowlet] Flowlet Reference
  /// [linkedService] Linked service reference.
  /// [name] Transformation name.
  /// [rejectedDataLinkedService] Rejected data linked service reference.
  /// [schemaLinkedService] Schema linked service reference.
  /// [script] sink script.
  PowerQuerySinkResponse({
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
      'dataset': ?pulumi.Input.mapOptionalInputValue<DatasetReferenceResponse, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<DataFlowReferenceResponse, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
      'rejectedDataLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(rejectedDataLinkedService, (value) => value.toMap()),
      'schemaLinkedService': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(schemaLinkedService, (value) => value.toMap()),
      'script': ?script,
    };
  }

  factory PowerQuerySinkResponse.fromMap(Map<String, dynamic> map) {
    return PowerQuerySinkResponse(
      dataset: map['dataset'] == null ? null : (DatasetReferenceResponse.fromMap((map['dataset'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      flowlet: map['flowlet'] == null ? null : (DataFlowReferenceResponse.fromMap((map['flowlet'] as Map).cast<String, dynamic>())).input(),
      linkedService: map['linkedService'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedService'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      rejectedDataLinkedService: map['rejectedDataLinkedService'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['rejectedDataLinkedService'] as Map).cast<String, dynamic>())).input(),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>())).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
    );
  }
}

