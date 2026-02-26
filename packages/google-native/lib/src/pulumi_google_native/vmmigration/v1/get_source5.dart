import 'package:pulumi/pulumi.dart';
import 'get_source_args5.dart';
import 'get_source_result5.dart';

/// Gets details of a single Source.
Future<GetSourceResult5> getSource5(
  GetSourceArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getSource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSourceResult5.fromMap(result);
}
