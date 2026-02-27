import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_iam_v1_args.dart';
import 'get_key_iam_v1_result.dart';

/// Gets a ServiceAccountKey.
Future<GetKeyIamV1Result> getKeyIamV1(
  GetKeyIamV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iam/v1:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyIamV1Result.fromMap(result);
}
