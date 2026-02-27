import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_sink_args.dart';
import 'get_organization_sink_result.dart';

/// Gets a sink.
Future<GetOrganizationSinkResult> getOrganizationSink(
  GetOrganizationSinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getOrganizationSink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSinkResult.fromMap(result);
}
