import 'package:pulumi/pulumi.dart';
import 'get_organizational_unit_args.dart';
import 'get_organizational_unit_result.dart';

/// Data source for getting an AWS Organizations Organizational Unit.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetOrganizationalUnitResult> getOrganizationalUnit(
  GetOrganizationalUnitArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnit:getOrganizationalUnit',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitResult.fromMap(result);
}
