import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_servicedirectory_v1beta1_args.dart';
import 'get_service_servicedirectory_v1beta1_result.dart';

/// Gets a service.
Future<GetServiceServicedirectoryV1beta1Result>
    getServiceServicedirectoryV1beta1(
  GetServiceServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceServicedirectoryV1beta1Result.fromMap(result);
}
