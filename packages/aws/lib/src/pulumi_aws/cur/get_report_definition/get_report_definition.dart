import 'package:pulumi/pulumi.dart';
import 'get_report_definition_args.dart';
import 'get_report_definition_result.dart';

/// Use this data source to get information on an AWS Cost and Usage Report Definition.
///
/// > *NOTE:* The AWS Cost and Usage Report service is only available in `us-east-1` currently.
///
/// > *NOTE:* If AWS Organizations is enabled, only the master account can use this resource.
Future<GetReportDefinitionResult> getReportDefinition(
  GetReportDefinitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cur/getReportDefinition:getReportDefinition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetReportDefinitionResult.fromMap(result);
}
