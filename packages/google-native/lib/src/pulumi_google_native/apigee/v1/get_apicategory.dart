import 'package:pulumi/pulumi.dart';
import 'get_apicategory_args.dart';
import 'get_apicategory_result.dart';

/// Gets an API category.
Future<GetApicategoryResult> getApicategory(
  GetApicategoryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApicategory',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApicategoryResult.fromMap(result);
}
