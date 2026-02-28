import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_args.dart';
import 'get_connectivity_test_iam_policy_args.dart';
import 'get_connectivity_test_iam_policy_networkmanagement_v1beta1_args.dart';
import 'get_connectivity_test_iam_policy_networkmanagement_v1beta1_result.dart';
import 'get_connectivity_test_iam_policy_result.dart';
import 'get_connectivity_test_networkmanagement_v1beta1_args.dart';
import 'get_connectivity_test_networkmanagement_v1beta1_result.dart';
import 'get_connectivity_test_result.dart';

/// Gets the details of a specific Connectivity Test.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanagement_v1_get_connectivity_test_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectivityTestResult> getConnectivityTest(
  GetConnectivityTestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkmanagement/v1:getConnectivityTest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanagement_v1_get_connectivity_test_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectivityTestIamPolicyResult> getConnectivityTestIamPolicy(
  GetConnectivityTestIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkmanagement/v1:getConnectivityTestIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestIamPolicyResult.fromMap(result);
}

/// Gets the details of a specific Connectivity Test.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanagement_v1beta1_get_connectivity_test_networkmanagement_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectivityTestNetworkmanagementV1beta1Result>
    getConnectivityTestNetworkmanagementV1beta1(
  GetConnectivityTestNetworkmanagementV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkmanagement/v1beta1:getConnectivityTest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestNetworkmanagementV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkmanagement_v1beta1_get_connectivity_test_iam_policy_networkmanagement_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectivityTestIamPolicyNetworkmanagementV1beta1Result>
    getConnectivityTestIamPolicyNetworkmanagementV1beta1(
  GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkmanagement/v1beta1:getConnectivityTestIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestIamPolicyNetworkmanagementV1beta1Result.fromMap(
      result);
}
