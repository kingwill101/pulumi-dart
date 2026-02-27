import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_binding_args.dart';
import 'get_service_binding_result.dart';

/// Gets details of a single ServiceBinding.
Future<GetServiceBindingResult> getServiceBinding(
  GetServiceBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getServiceBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingResult.fromMap(result);
}
