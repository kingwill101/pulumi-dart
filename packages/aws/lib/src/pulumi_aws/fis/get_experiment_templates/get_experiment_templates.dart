import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experiment_templates_args.dart';
import 'get_experiment_templates_result.dart';

/// This resource can be useful for getting back a set of FIS experiment template IDs.
///
/// ## Example Usage
///
/// The following shows outputting a list of all FIS experiment template IDs
///
///
///
/// The following shows filtering FIS experiment templates by tag
Future<GetExperimentTemplatesResult> getExperimentTemplates(
  GetExperimentTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fis/getExperimentTemplates:getExperimentTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentTemplatesResult.fromMap(result);
}
