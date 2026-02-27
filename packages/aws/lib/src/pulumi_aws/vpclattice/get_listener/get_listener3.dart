import 'package:pulumi/pulumi.dart';
import 'get_listener_args3.dart';
import 'get_listener_result3.dart';

/// Data source for managing an AWS VPC Lattice Listener.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetListenerResult3> getListener3(
  GetListenerArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getListener:getListener',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetListenerResult3.fromMap(result);
}
