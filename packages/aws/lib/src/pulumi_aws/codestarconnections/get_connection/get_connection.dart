import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codestarconnections/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}
