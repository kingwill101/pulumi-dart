import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizational_unit_descendant_accounts_args.dart';
import 'get_organizational_unit_descendant_accounts_result.dart';

/// Get all direct child accounts under a parent organizational unit. This provides all children.
Future<GetOrganizationalUnitDescendantAccountsResult>
    getOrganizationalUnitDescendantAccounts(
  GetOrganizationalUnitDescendantAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitDescendantAccounts:getOrganizationalUnitDescendantAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitDescendantAccountsResult.fromMap(result);
}
