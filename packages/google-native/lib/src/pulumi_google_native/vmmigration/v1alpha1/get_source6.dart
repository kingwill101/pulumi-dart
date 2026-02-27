import 'package:pulumi/pulumi.dart' hide Config;
import 'get_source_args6.dart';
import 'get_source_result6.dart';

/// Gets details of a single Source.
Future<GetSourceResult6> getSource6(
  GetSourceArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getSource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSourceResult6.fromMap(result);
}
