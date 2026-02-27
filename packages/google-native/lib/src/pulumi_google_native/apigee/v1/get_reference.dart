import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reference_args.dart';
import 'get_reference_result.dart';

/// Gets a Reference resource.
Future<GetReferenceResult> getReference(
  GetReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getReference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReferenceResult.fromMap(result);
}
