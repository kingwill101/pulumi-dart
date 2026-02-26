import 'package:pulumi/pulumi.dart';
import 'get_share_args.dart';
import 'get_share_result.dart';

/// Gets the details of a specific share.
Future<GetShareResult> getShare(
  GetShareArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getShare',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetShareResult.fromMap(result);
}
