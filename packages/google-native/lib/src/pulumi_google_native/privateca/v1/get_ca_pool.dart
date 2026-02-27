import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ca_pool_args.dart';
import 'get_ca_pool_result.dart';

/// Returns a CaPool.
Future<GetCaPoolResult> getCaPool(
  GetCaPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCaPoolResult.fromMap(result);
}
