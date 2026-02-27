import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_profiles_args.dart';
import 'get_instance_profiles_result.dart';

/// This data source can be used to fetch information about all
/// IAM instance profiles under a role. By using this data source, you can reference IAM
/// instance profile properties without having to hard code ARNs as input.
Future<GetInstanceProfilesResult> getInstanceProfiles(
  GetInstanceProfilesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getInstanceProfiles:getInstanceProfiles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceProfilesResult.fromMap(result);
}
