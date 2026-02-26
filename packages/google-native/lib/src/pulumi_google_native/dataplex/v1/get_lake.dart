import 'package:pulumi/pulumi.dart';
import 'get_lake_args.dart';
import 'get_lake_result.dart';

/// Retrieves a lake resource.
Future<GetLakeResult> getLake(
  GetLakeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLake',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLakeResult.fromMap(result);
}
