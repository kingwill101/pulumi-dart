import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_args.dart';
import 'get_directory_result.dart';

/// Get attributes of AWS Directory Service directory (SimpleAD, Managed AD, AD Connector). It's especially useful to refer AWS Managed AD or on-premise AD in AD Connector configuration.
Future<GetDirectoryResult> getDirectory(
  GetDirectoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directoryservice/getDirectory:getDirectory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryResult.fromMap(result);
}
