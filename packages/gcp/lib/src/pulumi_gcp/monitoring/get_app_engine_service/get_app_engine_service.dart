import 'package:pulumi/pulumi.dart';
import 'get_app_engine_service_args.dart';
import 'get_app_engine_service_result.dart';

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// An App Engine monitoring service is automatically created by GCP to monitor
/// App Engine services.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
///
/// ## Example Usage
///
/// ### Monitoring App Engine Service
Future<GetAppEngineServiceResult> getAppEngineService(
  GetAppEngineServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getAppEngineService:getAppEngineService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppEngineServiceResult.fromMap(result);
}
