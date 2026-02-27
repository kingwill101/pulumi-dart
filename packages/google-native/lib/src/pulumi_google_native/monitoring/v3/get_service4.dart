import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_args4.dart';
import 'get_service_result4.dart';

/// Get the named Service.
Future<GetServiceResult4> getService4(
  GetServiceArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult4.fromMap(result);
}
