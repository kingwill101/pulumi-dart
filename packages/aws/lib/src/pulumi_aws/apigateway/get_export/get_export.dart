import 'package:pulumi/pulumi.dart';
import 'get_export_args.dart';
import 'get_export_result.dart';

Future<GetExportResult> getExport(
  GetExportArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getExport:getExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}
