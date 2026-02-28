// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_context_aiplatform_v1beta1_args_doc}
/// Arguments for getContext.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_context_aiplatform_v1beta1_args_doc}
class GetContextAiplatformV1beta1Args {
  final pulumi.Input<String> contextId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetContextAiplatformV1beta1Args].
  /// [contextId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetContextAiplatformV1beta1Args({
    required String contextId,
    required String location,
    required String metadataStoreId,
    String? project,
  }) :
      contextId = pulumi.Input.asInput<String>(contextId),
      location = pulumi.Input.asInput<String>(location),
      metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextId': contextId,
      'location': location,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetContextAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetContextAiplatformV1beta1Args(
      contextId: map['contextId'] as String,
      location: map['location'] as String,
      metadataStoreId: map['metadataStoreId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

