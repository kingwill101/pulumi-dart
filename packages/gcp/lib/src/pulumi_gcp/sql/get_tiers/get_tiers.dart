import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tiers_args.dart';
import 'get_tiers_result.dart';

/// Get all available machine types (tiers) for a project, for example, db-custom-1-3840. For more information see the
/// [official documentation](https://cloud.google.com/sql/)
/// and
/// [API](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/tiers/list).
Future<GetTiersResult> getTiers(
  GetTiersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getTiers:getTiers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTiersResult.fromMap(result);
}
