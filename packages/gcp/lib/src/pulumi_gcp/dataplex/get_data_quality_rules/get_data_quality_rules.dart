import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_quality_rules_args.dart';
import 'get_data_quality_rules_result.dart';

/// Retrieves the generated data quality rules for the creating a new data quality scan.
/// For more information see
/// the [official documentation](https://cloud.google.com/dataplex/docs)
/// and [API](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.dataScans/generateDataQualityRules).
///
/// ## example
Future<GetDataQualityRulesResult> getDataQualityRules(
  GetDataQualityRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getDataQualityRules:getDataQualityRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataQualityRulesResult.fromMap(result);
}
