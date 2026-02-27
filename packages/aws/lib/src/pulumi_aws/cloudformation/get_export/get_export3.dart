import 'package:pulumi/pulumi.dart';
import 'get_export_args3.dart';
import 'get_export_result3.dart';

/// The CloudFormation Export data source allows access to stack
/// exports specified in the [Output](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html) section of the Cloudformation Template using the optional Export Property.
///
/// > Note: If you are trying to use a value from a Cloudformation Stack in the same deployment please use normal interpolation or Cloudformation Outputs.
Future<GetExportResult3> getExport3(
  GetExportArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getExport:getExport',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExportResult3.fromMap(result);
}
