import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_args.dart';
import 'get_connectivity_test_result.dart';

/// Gets the details of a specific Connectivity Test.
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
