import 'package:pulumi/pulumi.dart';
import 'get_source_args3.dart';
import 'get_source_result3.dart';

/// Gets a source.
Future<GetSourceResult3> getSource3(
  GetSourceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getSource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSourceResult3.fromMap(result);
}
