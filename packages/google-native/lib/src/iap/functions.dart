import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_brand_args.dart';
import 'get_brand_result.dart';
import 'get_dest_group_args.dart';
import 'get_dest_group_result.dart';
import 'get_identity_aware_proxy_client_args.dart';
import 'get_identity_aware_proxy_client_result.dart';
import 'get_v1_iam_policy_args.dart';
import 'get_v1_iam_policy_result.dart';
import 'get_v1beta1_iam_policy_args.dart';
import 'get_v1beta1_iam_policy_result.dart';

/// Retrieves the OAuth brand of the project.
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_v1_get_brand_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBrandResult> getBrand(
  GetBrandArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1:getBrand',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBrandResult.fromMap(result);
}

/// Retrieves an existing TunnelDestGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_v1_get_dest_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDestGroupResult> getDestGroup(
  GetDestGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1:getDestGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDestGroupResult.fromMap(result);
}

/// Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the client is owned by IAP.
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_v1_get_identity_aware_proxy_client_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIdentityAwareProxyClientResult> getIdentityAwareProxyClient(
  GetIdentityAwareProxyClientArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1:getIdentityAwareProxyClient',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIdentityAwareProxyClientResult.fromMap(result);
}

/// Gets the access control policy for an Identity-Aware Proxy protected resource. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_v1_get_v1_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetV1IamPolicyResult> getV1IamPolicy(
  GetV1IamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1:getV1IamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV1IamPolicyResult.fromMap(result);
}

/// Gets the access control policy for an Identity-Aware Proxy protected resource. More information about managing access via IAP can be found at: https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_v1beta1_get_v1beta1_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetV1beta1IamPolicyResult> getV1beta1IamPolicy(
  GetV1beta1IamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1beta1:getV1beta1IamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV1beta1IamPolicyResult.fromMap(result);
}
