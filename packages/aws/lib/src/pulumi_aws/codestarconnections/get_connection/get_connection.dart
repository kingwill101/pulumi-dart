import 'package:pulumi/pulumi.dart';
import 'get_connection_args.dart';
import 'get_connection_result.dart';

/// Provides details about CodeStar Connection.
///
/// ## Example Usage
///
/// ### By ARN
///
///
///
/// ### By Name
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codestarconnections/getConnection:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}
