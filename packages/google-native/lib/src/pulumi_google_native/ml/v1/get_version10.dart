import 'package:pulumi/pulumi.dart' hide Config;
import 'get_version_args10.dart';
import 'get_version_result10.dart';

/// Gets information about a model version. Models can have multiple versions. You can call projects.models.versions.list to get the same information that this method returns for all of the versions of a model.
Future<GetVersionResult10> getVersion10(
  GetVersionArgs10 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult10.fromMap(result);
}
