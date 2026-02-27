import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resourcefile_args.dart';
import 'get_resourcefile_result.dart';

/// Gets the contents of a resource file. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).
Future<GetResourcefileResult> getResourcefile(
  GetResourcefileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getResourcefile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcefileResult.fromMap(result);
}
