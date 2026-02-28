// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2beta_get_model_retail_v2beta_args_doc}
/// Arguments for getModel.
/// {@endtemplate}
/// {@macro pulumi_retail_v2beta_get_model_retail_v2beta_args_doc}
class GetModelRetailV2betaArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelRetailV2betaArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [modelId] Required.
  /// [project] Optional.
  GetModelRetailV2betaArgs({
    required String catalogId,
    required String location,
    required String modelId,
    String? project,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      location = pulumi.Input.asInput<String>(location),
      modelId = pulumi.Input.asInput<String>(modelId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': location,
      'modelId': modelId,
      'project': ?project,
    };
  }

  factory GetModelRetailV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetModelRetailV2betaArgs(
      catalogId: map['catalogId'] as String,
      location: map['location'] as String,
      modelId: map['modelId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

