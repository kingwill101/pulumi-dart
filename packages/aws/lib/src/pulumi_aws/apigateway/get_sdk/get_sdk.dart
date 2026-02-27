import 'package:pulumi/pulumi.dart';
import 'get_sdk_args.dart';
import 'get_sdk_result.dart';

Future<GetSdkResult> getSdk(
  GetSdkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getSdk:getSdk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSdkResult.fromMap(result);
}
