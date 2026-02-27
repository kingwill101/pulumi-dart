import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_binding_networkservices_v1beta1_args.dart';
import 'get_service_binding_networkservices_v1beta1_result.dart';

/// Gets details of a single ServiceBinding.
Future<GetServiceBindingNetworkservicesV1beta1Result>
    getServiceBindingNetworkservicesV1beta1(
  GetServiceBindingNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingNetworkservicesV1beta1Result.fromMap(result);
}
