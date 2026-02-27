import 'package:pulumi/pulumi.dart';
import 'get_organizational_unit_descendant_organizational_units_args.dart';
import 'get_organizational_unit_descendant_organizational_units_result.dart';

/// Get all direct child organizational units under a parent organizational unit. This provides all children.
Future<GetOrganizationalUnitDescendantOrganizationalUnitsResult>
    getOrganizationalUnitDescendantOrganizationalUnits(
  GetOrganizationalUnitDescendantOrganizationalUnitsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitDescendantOrganizationalUnits:getOrganizationalUnitDescendantOrganizationalUnits',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitDescendantOrganizationalUnitsResult.fromMap(
      result);
}
