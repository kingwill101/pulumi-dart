// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2beta_get_serving_config_retail_v2beta_args_doc}
/// Arguments for getServingConfig.
/// {@endtemplate}
/// {@macro pulumi_retail_v2beta_get_serving_config_retail_v2beta_args_doc}
class GetServingConfigRetailV2betaArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> servingConfigId;

  /// Creates a new [GetServingConfigRetailV2betaArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [servingConfigId] Required.
  GetServingConfigRetailV2betaArgs({
    required String catalogId,
    required String location,
    String? project,
    required String servingConfigId,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      servingConfigId = pulumi.Input.asInput<String>(servingConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': location,
      'project': ?project,
      'servingConfigId': servingConfigId,
    };
  }

  factory GetServingConfigRetailV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetServingConfigRetailV2betaArgs(
      catalogId: map['catalogId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      servingConfigId: map['servingConfigId'] as String,
    );
  }
}

