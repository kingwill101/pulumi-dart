import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_memorydb_args.dart';
import 'get_user_memorydb_result.dart';

/// Provides information about a MemoryDB User.
Future<GetUserMemorydbResult> getUserMemorydb(
  GetUserMemorydbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserMemorydbResult.fromMap(result);
}
