import 'package:pulumi/pulumi.dart';
import 'get_connectivity_tests_args.dart';
import 'get_connectivity_tests_result.dart';

/// A connectivity test is a static analysis of your resource configurations
/// that enables you to evaluate connectivity to and from Google Cloud
/// resources in your Virtual Private Cloud (VPC) network. This data source allows
/// you to list connectivity tests in a project.
///
/// To get more information about connectivity tests, see:
///
/// * [API documentation](https://cloud.google.com/network-intelligence-center/docs/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests/rerun)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-intelligence-center/docs)
Future<GetConnectivityTestsResult> getConnectivityTests(
  GetConnectivityTestsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networkmanagement/getConnectivityTests:getConnectivityTests',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestsResult.fromMap(result);
}
