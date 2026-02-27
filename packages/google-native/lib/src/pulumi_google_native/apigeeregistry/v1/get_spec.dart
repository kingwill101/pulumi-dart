import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spec_args.dart';
import 'get_spec_result.dart';

/// Returns a specified spec.
Future<GetSpecResult> getSpec(
  GetSpecArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getSpec',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpecResult.fromMap(result);
}
