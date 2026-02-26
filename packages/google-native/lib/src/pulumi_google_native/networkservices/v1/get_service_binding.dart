import 'package:pulumi/pulumi.dart';
import 'get_service_binding_args.dart';
import 'get_service_binding_result.dart';

/// Gets details of a single ServiceBinding.
Future<GetServiceBindingResult> getServiceBinding(
  GetServiceBindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getServiceBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingResult.fromMap(result);
}
