import 'package:pulumi/pulumi.dart';
import 'get_source_args4.dart';
import 'get_source_result4.dart';

/// Gets a source.
Future<GetSourceResult4> getSource4(
  GetSourceArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getSource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSourceResult4.fromMap(result);
}
