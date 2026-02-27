import 'package:pulumi/pulumi.dart' hide Config;
import 'get_lien_args.dart';
import 'get_lien_result.dart';

/// Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`
Future<GetLienResult> getLien(
  GetLienArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1:getLien',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLienResult.fromMap(result);
}
