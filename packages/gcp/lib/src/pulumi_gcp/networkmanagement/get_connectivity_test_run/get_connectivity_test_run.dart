import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_run_args.dart';
import 'get_connectivity_test_run_result.dart';

/// !> This datasource triggers side effects on the target resource. It will take a long time to refresh (i.e. `pulumi preview` will take much longer than usual) and may modify the state of the parent resource or other copies of the resource copying the same parent.
///
/// A connectivity test is a static analysis of your resource configurations
/// that enables you to evaluate connectivity to and from Google Cloud
/// resources in your Virtual Private Cloud (VPC) network. This data source allows
/// you to trigger a rerun operation on a connectivity test and return the results.
///
/// To get more information about connectivity tests, see:
///
/// * [API documentation](https://cloud.google.com/network-intelligence-center/docs/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests/rerun)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-intelligence-center/docs)
///
/// ## Example Usage
///
/// ### Network Management Connectivity Test Run Instances
Future<GetConnectivityTestRunResult> getConnectivityTestRun(
  GetConnectivityTestRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networkmanagement/getConnectivityTestRun:getConnectivityTestRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestRunResult.fromMap(result);
}
