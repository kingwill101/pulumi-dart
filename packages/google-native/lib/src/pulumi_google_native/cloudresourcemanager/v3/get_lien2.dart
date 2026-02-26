import 'package:pulumi/pulumi.dart';
import 'get_lien_args2.dart';
import 'get_lien_result2.dart';

/// Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`
Future<GetLienResult2> getLien2(
  GetLienArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getLien',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLienResult2.fromMap(result);
}
