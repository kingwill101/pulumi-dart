import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_automation_args.dart';
import 'get_automation_result.dart';
import 'get_delivery_pipeline_args.dart';
import 'get_delivery_pipeline_iam_policy_args.dart';
import 'get_delivery_pipeline_iam_policy_result.dart';
import 'get_delivery_pipeline_result.dart';
import 'get_release_args.dart';
import 'get_release_result.dart';
import 'get_rollout_args.dart';
import 'get_rollout_result.dart';
import 'get_target_args.dart';
import 'get_target_iam_policy_args.dart';
import 'get_target_iam_policy_result.dart';
import 'get_target_result.dart';

/// Gets details of a single Automation.
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_v1_get_automation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutomationResult> getAutomation(
  GetAutomationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getAutomation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutomationResult.fromMap(result);
}

/// Gets details of a single DeliveryPipeline.
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_v1_get_delivery_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeliveryPipelineResult> getDeliveryPipeline(
  GetDeliveryPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getDeliveryPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeliveryPipelineResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_v1_get_delivery_pipeline_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeliveryPipelineIamPolicyResult> getDeliveryPipelineIamPolicy(
  GetDeliveryPipelineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getDeliveryPipelineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeliveryPipelineIamPolicyResult.fromMap(result);
}

/// Gets details of a single Release.
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_v1_get_release_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReleaseResult> getRelease(
  GetReleaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getRelease',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReleaseResult.fromMap(result);
}

/// Gets details of a single Rollout.
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_v1_get_rollout_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRolloutResult> getRollout(
  GetRolloutArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getRollout',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolloutResult.fromMap(result);
}

/// Gets details of a single Target.
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_v1_get_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetResult> getTarget(
  GetTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_clouddeploy_v1_get_target_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetIamPolicyResult> getTargetIamPolicy(
  GetTargetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getTargetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetIamPolicyResult.fromMap(result);
}
