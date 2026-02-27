import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_override_args.dart';
import 'get_override_result.dart';

/// Gets a trace configuration override.
Future<GetOverrideResult> getOverride(
  GetOverrideArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOverride',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOverrideResult.fromMap(result);
}
