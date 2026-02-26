import 'package:pulumi/pulumi.dart';
import 'get_version_args3.dart';
import 'get_version_result3.dart';

/// Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.
Future<GetVersionResult3> getVersion3(
  GetVersionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult3.fromMap(result);
}
