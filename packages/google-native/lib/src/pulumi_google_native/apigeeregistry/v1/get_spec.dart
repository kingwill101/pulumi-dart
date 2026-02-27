import 'package:pulumi/pulumi.dart' hide Config;
import 'get_spec_args.dart';
import 'get_spec_result.dart';

/// Returns a specified spec.
Future<GetSpecResult> getSpec(
  GetSpecArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getSpec',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpecResult.fromMap(result);
}
