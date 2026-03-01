// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_automation_args_doc}
/// Arguments for getAutomation.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_automation_args_doc}
class GetAutomationArgs {
  final pulumi.Input<String> automationId;
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAutomationArgs].
  /// [automationId] Required.
  /// [deliveryPipelineId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAutomationArgs({
    required String automationId,
    required String deliveryPipelineId,
    required String location,
    String? project,
  }) : automationId = pulumi.Input.asInput<String>(automationId),
       deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationId': automationId,
      'deliveryPipelineId': deliveryPipelineId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAutomationArgs.fromMap(Map<String, dynamic> map) {
    return GetAutomationArgs(
      automationId: map['automationId'] as String,
      deliveryPipelineId: map['deliveryPipelineId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
