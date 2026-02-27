import 'package:pulumi/pulumi.dart';
import 'get_sink_args.dart';
import 'get_sink_result.dart';

/// Use this data source to get a project, folder, organization or billing account logging sink details.
/// To get more information about Service, see:
///
/// [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/sinks)
///
/// ## Example Usage
///
/// ### Retrieve Project Logging Sink Basic
Future<GetSinkResult> getSink(
  GetSinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getSink:getSink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSinkResult.fromMap(result);
}
