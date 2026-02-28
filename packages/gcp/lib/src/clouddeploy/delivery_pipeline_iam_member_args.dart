// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_member_condition.dart';

/// {@template pulumi_clouddeploy_delivery_pipeline_iam_member_delivery_pipeline_iam_member_args_doc}
/// The set of arguments for DeliveryPipelineIamMember.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_delivery_pipeline_iam_member_delivery_pipeline_iam_member_args_doc}
class DeliveryPipelineIamMemberArgs {
  final pulumi.Input<DeliveryPipelineIamMemberCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [DeliveryPipelineIamMemberArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [member] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  DeliveryPipelineIamMemberArgs({
    DeliveryPipelineIamMemberCondition? condition,
    String? location,
    required String member,
    String? name,
    String? project,
    required String role,
  }) :
      condition = pulumi.Input.asOptionalInput<DeliveryPipelineIamMemberCondition>(condition),
      location = pulumi.Input.asOptionalInput<String>(location),
      member = pulumi.Input.asInput<String>(member),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'member': member,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory DeliveryPipelineIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineIamMemberArgs(
      condition: map['condition'] == null ? null : DeliveryPipelineIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      member: map['member'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}

