import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_assignment_args.dart';
import 'get_assignment_result.dart';
import 'get_blueprint_args.dart';
import 'get_blueprint_result.dart';
import 'get_policy_assignment_artifact_args.dart';
import 'get_policy_assignment_artifact_result.dart';
import 'get_published_blueprint_args.dart';
import 'get_published_blueprint_result.dart';
import 'get_role_assignment_artifact_args.dart';
import 'get_role_assignment_artifact_result.dart';
import 'get_template_artifact_args.dart';
import 'get_template_artifact_result.dart';

/// Get a blueprint assignment.
///
/// Uses Azure REST API version 2018-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_blueprint_get_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssignmentResult> getAssignment(
  GetAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:blueprint:getAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssignmentResult.fromMap(result);
}

pulumi.Output<GetAssignmentResult> getAssignmentOutput(
  GetAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:blueprint:getAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssignmentResult.fromMap);
}

/// Get a blueprint definition.
///
/// Uses Azure REST API version 2018-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_blueprint_get_blueprint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlueprintResult> getBlueprint(
  GetBlueprintArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:blueprint:getBlueprint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlueprintResult.fromMap(result);
}

pulumi.Output<GetBlueprintResult> getBlueprintOutput(
  GetBlueprintArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:blueprint:getBlueprint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBlueprintResult.fromMap);
}

/// Get a blueprint artifact.
///
/// Uses Azure REST API version 2018-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_blueprint_get_policy_assignment_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyAssignmentArtifactResult> getPolicyAssignmentArtifact(
  GetPolicyAssignmentArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:blueprint:getPolicyAssignmentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyAssignmentArtifactResult.fromMap(result);
}

pulumi.Output<GetPolicyAssignmentArtifactResult> getPolicyAssignmentArtifactOutput(
  GetPolicyAssignmentArtifactArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:blueprint:getPolicyAssignmentArtifact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyAssignmentArtifactResult.fromMap);
}

/// Get a published version of a blueprint definition.
///
/// Uses Azure REST API version 2018-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_blueprint_get_published_blueprint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublishedBlueprintResult> getPublishedBlueprint(
  GetPublishedBlueprintArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:blueprint:getPublishedBlueprint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublishedBlueprintResult.fromMap(result);
}

pulumi.Output<GetPublishedBlueprintResult> getPublishedBlueprintOutput(
  GetPublishedBlueprintArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:blueprint:getPublishedBlueprint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPublishedBlueprintResult.fromMap);
}

/// Get a blueprint artifact.
///
/// Uses Azure REST API version 2018-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_blueprint_get_role_assignment_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleAssignmentArtifactResult> getRoleAssignmentArtifact(
  GetRoleAssignmentArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:blueprint:getRoleAssignmentArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleAssignmentArtifactResult.fromMap(result);
}

pulumi.Output<GetRoleAssignmentArtifactResult> getRoleAssignmentArtifactOutput(
  GetRoleAssignmentArtifactArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:blueprint:getRoleAssignmentArtifact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoleAssignmentArtifactResult.fromMap);
}

/// Get a blueprint artifact.
///
/// Uses Azure REST API version 2018-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_blueprint_get_template_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplateArtifactResult> getTemplateArtifact(
  GetTemplateArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:blueprint:getTemplateArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplateArtifactResult.fromMap(result);
}

pulumi.Output<GetTemplateArtifactResult> getTemplateArtifactOutput(
  GetTemplateArtifactArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:blueprint:getTemplateArtifact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTemplateArtifactResult.fromMap);
}
