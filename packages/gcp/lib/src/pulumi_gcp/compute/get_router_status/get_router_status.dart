import 'package:pulumi/pulumi.dart';
import 'get_router_status_args.dart';
import 'get_router_status_result.dart';

/// Get a Cloud Router's status within GCE from its name and region. This data source exposes the
/// routes learned by a Cloud Router via BGP peers.
///
/// For more information see [the official documentation](https://cloud.google.com/network-connectivity/docs/router/how-to/viewing-router-details)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/routers/getRouterStatus).
Future<GetRouterStatusResult> getRouterStatus(
  GetRouterStatusArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouterStatus:getRouterStatus',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouterStatusResult.fromMap(result);
}
