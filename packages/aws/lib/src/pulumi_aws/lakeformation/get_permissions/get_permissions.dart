import 'package:pulumi/pulumi.dart';
import 'get_permissions_args.dart';
import 'get_permissions_result.dart';

/// Get permissions for a principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Permissions are granted to a principal, in a Data Catalog, relative to a Lake Formation resource, which includes the Data Catalog, databases, tables, LF-tags, and LF-tag policies. For more information, see [Security and Access Control to Metadata and Data in Lake Formation](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
///
/// > **NOTE:** This data source deals with explicitly granted permissions. Lake Formation grants implicit permissions to data lake administrators, database creators, and table creators. For more information, see [Implicit Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/implicit-permissions.html).
///
/// ## Example Usage
///
/// ### Permissions For A Lake Formation S3 Resource
///
///
///
/// ### Permissions For A Glue Catalog Database
///
///
///
/// ### Permissions For Tag-Based Access Control
Future<GetPermissionsResult> getPermissions(
  GetPermissionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lakeformation/getPermissions:getPermissions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPermissionsResult.fromMap(result);
}
