import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_vpclattice_args.dart';
import 'get_service_vpclattice_result.dart';

/// Data source for managing an AWS VPC Lattice Service.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetServiceVpclatticeResult> getServiceVpclattice(
  GetServiceVpclatticeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceVpclatticeResult.fromMap(result);
}
