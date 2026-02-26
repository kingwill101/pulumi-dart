import 'package:pulumi/pulumi.dart';
import 'get_connectivity_test_args2.dart';
import 'get_connectivity_test_result2.dart';

/// Gets the details of a specific Connectivity Test.
Future<GetConnectivityTestResult2> getConnectivityTest2(
  GetConnectivityTestArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkmanagement/v1beta1:getConnectivityTest',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestResult2.fromMap(result);
}
