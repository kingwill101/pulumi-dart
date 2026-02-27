import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_cloudidentity_v1beta1_args.dart';
import 'get_group_cloudidentity_v1beta1_result.dart';

/// Retrieves a `Group`.
Future<GetGroupCloudidentityV1beta1Result> getGroupCloudidentityV1beta1(
  GetGroupCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupCloudidentityV1beta1Result.fromMap(result);
}
