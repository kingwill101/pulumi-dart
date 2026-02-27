import 'package:pulumi/pulumi.dart' hide Config;
import 'get_reference_args.dart';
import 'get_reference_result.dart';

/// Gets a Reference resource.
Future<GetReferenceResult> getReference(
  GetReferenceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getReference',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReferenceResult.fromMap(result);
}
