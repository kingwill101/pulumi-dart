import 'package:pulumi/pulumi.dart';
import 'get_organizational_units_args.dart';
import 'get_organizational_units_result.dart';

/// Get all direct child organizational units under a parent organizational unit. This only provides immediate children, not all children.
Future<GetOrganizationalUnitsResult> getOrganizationalUnits(
  GetOrganizationalUnitsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnits:getOrganizationalUnits',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitsResult.fromMap(result);
}
