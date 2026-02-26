import 'package:pulumi/pulumi.dart';
import 'get_tiers_args.dart';
import 'get_tiers_result.dart';

/// Get all available machine types (tiers) for a project, for example, db-custom-1-3840. For more information see the
/// [official documentation](https://cloud.google.com/sql/)
/// and
/// [API](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/tiers/list).
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tiers = gcp.sql.getTiers({
/// project: "sample-project",
/// });
/// const allAvailableTiers = tiers.then(tiers => .map(v => (v.tier)));
/// export const avaialbleTiers = allAvailableTiers;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tiers = gcp.sql.get_tiers(project="sample-project")
/// all_available_tiers = [v.tier for v in tiers.tiers]
/// pulumi.export("avaialbleTiers", all_available_tiers)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var tiers = Gcp.Sql.GetTiers.Invoke(new()
/// {
/// Project = "sample-project",
/// });
///
/// var allAvailableTiers = .Select(v =>
/// {
/// return v.Tier;
/// }).ToList();
///
/// return new Dictionary<string, object?>
/// {
/// ["avaialbleTiers"] = allAvailableTiers,
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTiersResult> getTiers(
  GetTiersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getTiers:getTiers',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTiersResult.fromMap(result);
}
