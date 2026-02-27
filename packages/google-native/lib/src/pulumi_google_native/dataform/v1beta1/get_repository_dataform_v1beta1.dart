import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_dataform_v1beta1_args.dart';
import 'get_repository_dataform_v1beta1_result.dart';

/// Fetches a single Repository.
Future<GetRepositoryDataformV1beta1Result> getRepositoryDataformV1beta1(
  GetRepositoryDataformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryDataformV1beta1Result.fromMap(result);
}
