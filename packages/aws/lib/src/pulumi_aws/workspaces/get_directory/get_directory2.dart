import 'package:pulumi/pulumi.dart';
import 'get_directory_args2.dart';
import 'get_directory_result2.dart';

/// Retrieve information about an AWS WorkSpaces directory.
Future<GetDirectoryResult2> getDirectory2(
  GetDirectoryArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getDirectory:getDirectory',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDirectoryResult2.fromMap(result);
}
