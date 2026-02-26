import 'package:pulumi/pulumi.dart';
import 'get_specialist_pool_args.dart';
import 'get_specialist_pool_result.dart';

/// Gets a SpecialistPool.
Future<GetSpecialistPoolResult> getSpecialistPool(
  GetSpecialistPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getSpecialistPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpecialistPoolResult.fromMap(result);
}
