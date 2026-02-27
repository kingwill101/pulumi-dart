import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_vpclattice_args.dart';
import 'get_listener_vpclattice_result.dart';

/// Data source for managing an AWS VPC Lattice Listener.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetListenerVpclatticeResult> getListenerVpclattice(
  GetListenerVpclatticeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getListener:getListener',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenerVpclatticeResult.fromMap(result);
}
