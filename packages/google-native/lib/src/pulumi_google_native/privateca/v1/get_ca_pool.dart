import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ca_pool_args.dart';
import 'get_ca_pool_result.dart';

/// Returns a CaPool.
Future<GetCaPoolResult> getCaPool(
  GetCaPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaPoolResult.fromMap(result);
}
