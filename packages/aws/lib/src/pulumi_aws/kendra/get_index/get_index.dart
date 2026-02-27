import 'package:pulumi/pulumi.dart';
import 'get_index_args.dart';
import 'get_index_result.dart';

/// Provides details about a specific Amazon Kendra Index.
Future<GetIndexResult> getIndex(
  GetIndexArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getIndex:getIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIndexResult.fromMap(result);
}
