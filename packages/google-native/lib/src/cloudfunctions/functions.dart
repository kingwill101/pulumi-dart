import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_args.dart';
import 'get_function_cloudfunctions_v2_args.dart';
import 'get_function_cloudfunctions_v2_result.dart';
import 'get_function_cloudfunctions_v2alpha_args.dart';
import 'get_function_cloudfunctions_v2alpha_result.dart';
import 'get_function_cloudfunctions_v2beta_args.dart';
import 'get_function_cloudfunctions_v2beta_result.dart';
import 'get_function_iam_policy_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2_result.dart';
import 'get_function_iam_policy_cloudfunctions_v2alpha_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2alpha_result.dart';
import 'get_function_iam_policy_cloudfunctions_v2beta_args.dart';
import 'get_function_iam_policy_cloudfunctions_v2beta_result.dart';
import 'get_function_iam_policy_result.dart';
import 'get_function_result.dart';

/// Returns a function with the given name from the requested project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v1_get_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v1:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}

/// Gets the IAM access control policy for a function. Returns an empty policy if the function exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v1_get_function_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyResult> getFunctionIamPolicy(
  GetFunctionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v1:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult.fromMap(result);
}

/// Returns a function with the given name from the requested project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2_get_function_cloudfunctions_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionCloudfunctionsV2Result> getFunctionCloudfunctionsV2(
  GetFunctionCloudfunctionsV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2_get_function_iam_policy_cloudfunctions_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyCloudfunctionsV2Result>
    getFunctionIamPolicyCloudfunctionsV2(
  GetFunctionIamPolicyCloudfunctionsV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyCloudfunctionsV2Result.fromMap(result);
}

/// Returns a function with the given name from the requested project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2alpha_get_function_cloudfunctions_v2alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionCloudfunctionsV2alphaResult> getFunctionCloudfunctionsV2alpha(
  GetFunctionCloudfunctionsV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2alpha_get_function_iam_policy_cloudfunctions_v2alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyCloudfunctionsV2alphaResult>
    getFunctionIamPolicyCloudfunctionsV2alpha(
  GetFunctionIamPolicyCloudfunctionsV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2alpha:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyCloudfunctionsV2alphaResult.fromMap(result);
}

/// Returns a function with the given name from the requested project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2beta_get_function_cloudfunctions_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionCloudfunctionsV2betaResult> getFunctionCloudfunctionsV2beta(
  GetFunctionCloudfunctionsV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionCloudfunctionsV2betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfunctions_v2beta_get_function_iam_policy_cloudfunctions_v2beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionIamPolicyCloudfunctionsV2betaResult>
    getFunctionIamPolicyCloudfunctionsV2beta(
  GetFunctionIamPolicyCloudfunctionsV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudfunctions/v2beta:getFunctionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyCloudfunctionsV2betaResult.fromMap(result);
}
