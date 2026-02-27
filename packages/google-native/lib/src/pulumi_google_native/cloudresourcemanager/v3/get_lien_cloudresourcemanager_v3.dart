import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lien_cloudresourcemanager_v3_args.dart';
import 'get_lien_cloudresourcemanager_v3_result.dart';

/// Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`
Future<GetLienCloudresourcemanagerV3Result> getLienCloudresourcemanagerV3(
  GetLienCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getLien',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLienCloudresourcemanagerV3Result.fromMap(result);
}
