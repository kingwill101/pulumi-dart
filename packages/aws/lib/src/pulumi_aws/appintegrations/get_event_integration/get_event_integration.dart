import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_integration_args.dart';
import 'get_event_integration_result.dart';

/// Use this data source to get information on an existing AppIntegrations Event Integration.
Future<GetEventIntegrationResult> getEventIntegration(
  GetEventIntegrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appintegrations/getEventIntegration:getEventIntegration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventIntegrationResult.fromMap(result);
}
