import 'package:pulumi/pulumi.dart';
import 'get_templates_args.dart';
import 'get_templates_result.dart';

/// Data source for managing AWS Service Quotas Templates.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetTemplatesResult> getTemplates(
  GetTemplatesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicequotas/getTemplates:getTemplates',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTemplatesResult.fromMap(result);
}
