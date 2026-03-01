import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_as3_device_information_args.dart';
import 'get_as3_device_information_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_as3_device_information_get_as3_device_information_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAs3DeviceInformationResult> getAs3DeviceInformation(
  GetAs3DeviceInformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:index/getAs3DeviceInformation:getAs3DeviceInformation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAs3DeviceInformationResult.fromMap(result);
}
