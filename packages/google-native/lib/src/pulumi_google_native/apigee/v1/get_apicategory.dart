import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_apicategory_args.dart';
import 'get_apicategory_result.dart';

/// Gets an API category.
Future<GetApicategoryResult> getApicategory(
  GetApicategoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApicategory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApicategoryResult.fromMap(result);
}
