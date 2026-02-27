import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_export_cloudformation_args.dart';
import 'get_export_cloudformation_result.dart';

/// The CloudFormation Export data source allows access to stack
/// exports specified in the [Output](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html) section of the Cloudformation Template using the optional Export Property.
///
/// > Note: If you are trying to use a value from a Cloudformation Stack in the same deployment please use normal interpolation or Cloudformation Outputs.
Future<GetExportCloudformationResult> getExportCloudformation(
  GetExportCloudformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getExport:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportCloudformationResult.fromMap(result);
}
