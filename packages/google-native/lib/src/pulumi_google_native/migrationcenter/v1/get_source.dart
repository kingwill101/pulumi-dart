import 'package:pulumi/pulumi.dart';
import 'get_source_args.dart';
import 'get_source_result.dart';

/// Gets the details of a source.
Future<GetSourceResult> getSource(
  GetSourceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getSource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSourceResult.fromMap(result);
}
