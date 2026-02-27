import 'package:pulumi/pulumi.dart';
import 'get_connection_args4.dart';
import 'get_connection_result4.dart';

/// Provides details about an existing Network Manager connection.
Future<GetConnectionResult4> getConnection4(
  GetConnectionArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getConnection:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult4.fromMap(result);
}
