import 'package:pulumi/pulumi.dart' hide Config;
import 'get_developer_args.dart';
import 'get_developer_result.dart';

/// Returns the developer details, including the developer's name, email address, apps, and other information. **Note**: The response includes only the first 100 developer apps.
Future<GetDeveloperResult> getDeveloper(
  GetDeveloperArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloper',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeveloperResult.fromMap(result);
}
