import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_args.dart';
import 'get_secret_iam_policy_args.dart';
import 'get_secret_iam_policy_result.dart';
import 'get_secret_iam_policy_secretmanager_v1beta1_args.dart';
import 'get_secret_iam_policy_secretmanager_v1beta1_result.dart';
import 'get_secret_result.dart';
import 'get_secret_secretmanager_v1beta1_args.dart';
import 'get_secret_secretmanager_v1beta1_result.dart';

/// Gets metadata for a given Secret.
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_v1_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

/// Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_v1_get_secret_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretIamPolicyResult> getSecretIamPolicy(
  GetSecretIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1:getSecretIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretIamPolicyResult.fromMap(result);
}

/// Gets metadata for a given Secret.
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_v1beta1_get_secret_secretmanager_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretSecretmanagerV1beta1Result> getSecretSecretmanagerV1beta1(
  GetSecretSecretmanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1beta1:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretSecretmanagerV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_v1beta1_get_secret_iam_policy_secretmanager_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretIamPolicySecretmanagerV1beta1Result>
getSecretIamPolicySecretmanagerV1beta1(
  GetSecretIamPolicySecretmanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1beta1:getSecretIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretIamPolicySecretmanagerV1beta1Result.fromMap(result);
}
