import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_servicedirectory_v1_args.dart';
import 'get_service_servicedirectory_v1_result.dart';

/// Gets a service.
Future<GetServiceServicedirectoryV1Result> getServiceServicedirectoryV1(
  GetServiceServicedirectoryV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceServicedirectoryV1Result.fromMap(result);
}
