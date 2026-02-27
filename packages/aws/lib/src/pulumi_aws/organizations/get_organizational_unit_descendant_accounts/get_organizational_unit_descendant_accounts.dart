import 'package:pulumi/pulumi.dart';
import 'get_organizational_unit_descendant_accounts_args.dart';
import 'get_organizational_unit_descendant_accounts_result.dart';

/// Get all direct child accounts under a parent organizational unit. This provides all children.
Future<GetOrganizationalUnitDescendantAccountsResult>
    getOrganizationalUnitDescendantAccounts(
  GetOrganizationalUnitDescendantAccountsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitDescendantAccounts:getOrganizationalUnitDescendantAccounts',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitDescendantAccountsResult.fromMap(result);
}
