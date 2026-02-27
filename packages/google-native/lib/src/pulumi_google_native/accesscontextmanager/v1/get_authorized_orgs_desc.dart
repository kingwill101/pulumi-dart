import 'package:pulumi/pulumi.dart' hide Config;
import 'get_authorized_orgs_desc_args.dart';
import 'get_authorized_orgs_desc_result.dart';

/// Gets an authorized orgs desc based on the resource name.
Future<GetAuthorizedOrgsDescResult> getAuthorizedOrgsDesc(
  GetAuthorizedOrgsDescArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getAuthorizedOrgsDesc',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedOrgsDescResult.fromMap(result);
}
