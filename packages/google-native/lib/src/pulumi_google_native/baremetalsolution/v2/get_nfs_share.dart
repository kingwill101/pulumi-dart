import 'package:pulumi/pulumi.dart';
import 'get_nfs_share_args.dart';
import 'get_nfs_share_result.dart';

/// Get details of a single NFS share.
Future<GetNfsShareResult> getNfsShare(
  GetNfsShareArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:baremetalsolution/v2:getNfsShare',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNfsShareResult.fromMap(result);
}
