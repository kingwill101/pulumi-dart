import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizational_unit_child_accounts_args.dart';
import 'get_organizational_unit_child_accounts_result.dart';

/// Get all direct child accounts under a parent organizational unit. This only provides immediate children, not all children.
Future<GetOrganizationalUnitChildAccountsResult>
    getOrganizationalUnitChildAccounts(
  GetOrganizationalUnitChildAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitChildAccounts:getOrganizationalUnitChildAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitChildAccountsResult.fromMap(result);
}
