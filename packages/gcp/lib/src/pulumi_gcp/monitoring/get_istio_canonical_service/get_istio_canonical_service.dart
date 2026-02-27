import 'package:pulumi/pulumi.dart';
import 'get_istio_canonical_service_args.dart';
import 'get_istio_canonical_service_result.dart';

/// A Monitoring Service is the root resource under which operational aspects of a
/// generic service are accessible. A service is some discrete, autonomous, and
/// network-accessible unit, designed to solve an individual concern
///
/// A monitoring Istio Canonical Service is automatically created by GCP to monitor
/// Istio Canonical Services.
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
/// ### Monitoring Istio Canonical Service
Future<GetIstioCanonicalServiceResult> getIstioCanonicalService(
  GetIstioCanonicalServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:monitoring/getIstioCanonicalService:getIstioCanonicalService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIstioCanonicalServiceResult.fromMap(result);
}
