import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_networkmanagement_v1beta1_args.dart';
import 'get_connectivity_test_networkmanagement_v1beta1_result.dart';

/// Gets the details of a specific Connectivity Test.
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
