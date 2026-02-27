import 'package:pulumi/pulumi.dart' hide Config;
import 'get_index_args.dart';
import 'get_index_result.dart';

/// Gets an Index.
Future<GetIndexResult> getIndex(
  GetIndexArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getIndex',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIndexResult.fromMap(result);
}
