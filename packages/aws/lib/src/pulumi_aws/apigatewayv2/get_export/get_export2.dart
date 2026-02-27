import 'package:pulumi/pulumi.dart';
import 'get_export_args2.dart';
import 'get_export_result2.dart';

/// Exports a definition of an API in a particular output format and specification.
Future<GetExportResult2> getExport2(
  GetExportArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getExport:getExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExportResult2.fromMap(result);
}
