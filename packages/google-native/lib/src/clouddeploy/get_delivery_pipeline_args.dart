// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_delivery_pipeline_args_doc}
/// Arguments for getDeliveryPipeline.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_delivery_pipeline_args_doc}
class GetDeliveryPipelineArgs {
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeliveryPipelineArgs].
  /// [deliveryPipelineId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDeliveryPipelineArgs({
    required String deliveryPipelineId,
    required String location,
    String? project,
  }) :
      deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryPipelineId': deliveryPipelineId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDeliveryPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetDeliveryPipelineArgs(
      deliveryPipelineId: map['deliveryPipelineId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

