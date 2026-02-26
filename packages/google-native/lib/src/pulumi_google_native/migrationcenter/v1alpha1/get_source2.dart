import 'package:pulumi/pulumi.dart';
import 'get_source_args2.dart';
import 'get_source_result2.dart';

/// Gets the details of a source.
Future<GetSourceResult2> getSource2(
  GetSourceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getSource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSourceResult2.fromMap(result);
}
