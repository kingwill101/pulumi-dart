import 'package:pulumi/pulumi.dart';
import 'get_service_binding_args2.dart';
import 'get_service_binding_result2.dart';

/// Gets details of a single ServiceBinding.
Future<GetServiceBindingResult2> getServiceBinding2(
  GetServiceBindingArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingResult2.fromMap(result);
}
