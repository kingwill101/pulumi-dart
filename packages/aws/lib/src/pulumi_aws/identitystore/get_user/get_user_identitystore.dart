import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_identitystore_args.dart';
import 'get_user_identitystore_result.dart';

/// Use this data source to get an Identity Store User.
Future<GetUserIdentitystoreResult> getUserIdentitystore(
  GetUserIdentitystoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserIdentitystoreResult.fromMap(result);
}
