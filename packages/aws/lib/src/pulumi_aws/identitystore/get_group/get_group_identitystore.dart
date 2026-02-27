import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_identitystore_args.dart';
import 'get_group_identitystore_result.dart';

/// Use this data source to get an Identity Store Group.
Future<GetGroupIdentitystoreResult> getGroupIdentitystore(
  GetGroupIdentitystoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupIdentitystoreResult.fromMap(result);
}
