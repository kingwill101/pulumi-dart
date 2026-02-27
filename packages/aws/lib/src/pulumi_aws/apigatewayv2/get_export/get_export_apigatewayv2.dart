import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_export_apigatewayv2_args.dart';
import 'get_export_apigatewayv2_result.dart';

/// Exports a definition of an API in a particular output format and specification.
Future<GetExportApigatewayv2Result> getExportApigatewayv2(
  GetExportApigatewayv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getExport:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportApigatewayv2Result.fromMap(result);
}
