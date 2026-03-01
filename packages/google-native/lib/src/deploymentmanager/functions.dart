import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_composite_type_args.dart';
import 'get_composite_type_deploymentmanager_v2beta_args.dart';
import 'get_composite_type_deploymentmanager_v2beta_result.dart';
import 'get_composite_type_result.dart';
import 'get_deployment_args.dart';
import 'get_deployment_deploymentmanager_v2_args.dart';
import 'get_deployment_deploymentmanager_v2_result.dart';
import 'get_deployment_deploymentmanager_v2beta_args.dart';
import 'get_deployment_deploymentmanager_v2beta_result.dart';
import 'get_deployment_iam_policy_args.dart';
import 'get_deployment_iam_policy_deploymentmanager_v2_args.dart';
import 'get_deployment_iam_policy_deploymentmanager_v2_result.dart';
import 'get_deployment_iam_policy_deploymentmanager_v2beta_args.dart';
import 'get_deployment_iam_policy_deploymentmanager_v2beta_result.dart';
import 'get_deployment_iam_policy_result.dart';
import 'get_deployment_result.dart';
import 'get_type_provider_args.dart';
import 'get_type_provider_deploymentmanager_v2beta_args.dart';
import 'get_type_provider_deploymentmanager_v2beta_result.dart';
import 'get_type_provider_result.dart';

/// Gets information about a specific composite type.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_alpha_get_composite_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCompositeTypeResult> getCompositeType(
  GetCompositeTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getCompositeType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompositeTypeResult.fromMap(result);
}

/// Gets information about a specific deployment.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_alpha_get_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_alpha_get_deployment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentIamPolicyResult> getDeploymentIamPolicy(
  GetDeploymentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getDeploymentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentIamPolicyResult.fromMap(result);
}

/// Gets information about a specific type provider.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_alpha_get_type_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTypeProviderResult> getTypeProvider(
  GetTypeProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getTypeProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTypeProviderResult.fromMap(result);
}

/// Gets information about a specific deployment.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_v2_get_deployment_deploymentmanager_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentDeploymentmanagerV2Result> getDeploymentDeploymentmanagerV2(
  GetDeploymentDeploymentmanagerV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentDeploymentmanagerV2Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_v2_get_deployment_iam_policy_deploymentmanager_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentIamPolicyDeploymentmanagerV2Result>
getDeploymentIamPolicyDeploymentmanagerV2(
  GetDeploymentIamPolicyDeploymentmanagerV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2:getDeploymentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentIamPolicyDeploymentmanagerV2Result.fromMap(result);
}

/// Gets information about a specific composite type.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_v2beta_get_composite_type_deploymentmanager_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCompositeTypeDeploymentmanagerV2betaResult>
getCompositeTypeDeploymentmanagerV2beta(
  GetCompositeTypeDeploymentmanagerV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getCompositeType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompositeTypeDeploymentmanagerV2betaResult.fromMap(result);
}

/// Gets information about a specific deployment.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_v2beta_get_deployment_deploymentmanager_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentDeploymentmanagerV2betaResult>
getDeploymentDeploymentmanagerV2beta(
  GetDeploymentDeploymentmanagerV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentDeploymentmanagerV2betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_v2beta_get_deployment_iam_policy_deploymentmanager_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentIamPolicyDeploymentmanagerV2betaResult>
getDeploymentIamPolicyDeploymentmanagerV2beta(
  GetDeploymentIamPolicyDeploymentmanagerV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getDeploymentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentIamPolicyDeploymentmanagerV2betaResult.fromMap(result);
}

/// Gets information about a specific type provider.
/// [args] Arguments passed to this invoke. {@macro pulumi_deploymentmanager_v2beta_get_type_provider_deploymentmanager_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTypeProviderDeploymentmanagerV2betaResult>
getTypeProviderDeploymentmanagerV2beta(
  GetTypeProviderDeploymentmanagerV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getTypeProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTypeProviderDeploymentmanagerV2betaResult.fromMap(result);
}
