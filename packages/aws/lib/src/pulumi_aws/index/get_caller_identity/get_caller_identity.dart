import 'package:pulumi/pulumi.dart';
import 'get_caller_identity_args.dart';
import 'get_caller_identity_result.dart';

/// Use this data source to get the access to the effective Account ID, User ID, and ARN in
/// which this provider is authorized.
Future<GetCallerIdentityResult> getCallerIdentity(
  GetCallerIdentityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getCallerIdentity:getCallerIdentity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCallerIdentityResult.fromMap(result);
}
