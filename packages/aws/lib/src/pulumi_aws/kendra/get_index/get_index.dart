import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_args.dart';
import 'get_index_result.dart';

/// Provides details about a specific Amazon Kendra Index.
Future<GetIndexResult> getIndex(
  GetIndexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getIndex:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexResult.fromMap(result);
}
