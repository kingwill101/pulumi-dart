import 'package:pulumi/pulumi.dart';
import 'get_specialist_pool_args2.dart';
import 'get_specialist_pool_result2.dart';

/// Gets a SpecialistPool.
Future<GetSpecialistPoolResult2> getSpecialistPool2(
  GetSpecialistPoolArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSpecialistPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpecialistPoolResult2.fromMap(result);
}
