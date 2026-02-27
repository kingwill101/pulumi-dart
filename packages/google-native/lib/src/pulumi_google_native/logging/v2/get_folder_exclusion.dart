import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_exclusion_args.dart';
import 'get_folder_exclusion_result.dart';

/// Gets the description of an exclusion in the _Default sink.
Future<GetFolderExclusionResult> getFolderExclusion(
  GetFolderExclusionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getFolderExclusion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderExclusionResult.fromMap(result);
}
