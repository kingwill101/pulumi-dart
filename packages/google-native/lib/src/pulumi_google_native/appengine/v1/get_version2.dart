import 'package:pulumi/pulumi.dart' hide Config;
import 'get_version_args2.dart';
import 'get_version_result2.dart';

/// Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.
Future<GetVersionResult2> getVersion2(
  GetVersionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult2.fromMap(result);
}
