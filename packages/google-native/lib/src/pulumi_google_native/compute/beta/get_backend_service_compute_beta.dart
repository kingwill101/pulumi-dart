import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_compute_beta_args.dart';
import 'get_backend_service_compute_beta_result.dart';

/// Returns the specified BackendService resource.
Future<GetBackendServiceComputeBetaResult> getBackendServiceComputeBeta(
  GetBackendServiceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceComputeBetaResult.fromMap(result);
}
