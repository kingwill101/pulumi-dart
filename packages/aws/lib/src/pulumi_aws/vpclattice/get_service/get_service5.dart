import 'package:pulumi/pulumi.dart';
import 'get_service_args5.dart';
import 'get_service_result5.dart';

/// Data source for managing an AWS VPC Lattice Service.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetServiceResult5> getService5(
  GetServiceArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult5.fromMap(result);
}
