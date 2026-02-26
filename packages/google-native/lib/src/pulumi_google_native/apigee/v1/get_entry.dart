import 'package:pulumi/pulumi.dart';
import 'get_entry_args.dart';
import 'get_entry_result.dart';

/// Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
Future<GetEntryResult> getEntry(
  GetEntryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEntry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryResult.fromMap(result);
}
