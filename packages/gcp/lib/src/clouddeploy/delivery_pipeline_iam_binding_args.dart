// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_binding_condition.dart';

/// {@template pulumi_clouddeploy_delivery_pipeline_iam_binding_delivery_pipeline_iam_binding_args_doc}
/// The set of arguments for DeliveryPipelineIamBinding.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_delivery_pipeline_iam_binding_delivery_pipeline_iam_binding_args_doc}
class DeliveryPipelineIamBindingArgs {
  final pulumi.Input<DeliveryPipelineIamBindingCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [DeliveryPipelineIamBindingArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [members] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  DeliveryPipelineIamBindingArgs({
    DeliveryPipelineIamBindingCondition? condition,
    String? location,
    required List<String> members,
    String? name,
    String? project,
    required String role,
  }) :
      condition = pulumi.Input.asOptionalInput<DeliveryPipelineIamBindingCondition>(condition),
      location = pulumi.Input.asOptionalInput<String>(location),
      members = pulumi.Input.asInput<List<String>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'members': members,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory DeliveryPipelineIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineIamBindingArgs(
      condition: map['condition'] == null ? null : DeliveryPipelineIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      members: (map['members'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}

