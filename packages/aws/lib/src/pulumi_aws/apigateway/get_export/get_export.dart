import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_export_args.dart';
import 'get_export_result.dart';

Future<GetExportResult> getExport(
  GetExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getExport:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}
