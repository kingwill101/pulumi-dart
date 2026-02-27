import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_service_account_compute_args.dart';
import 'get_default_service_account_compute_result.dart';

/// Use this data source to retrieve default service account for this project
Future<GetDefaultServiceAccountComputeResult> getDefaultServiceAccountCompute(
  GetDefaultServiceAccountComputeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDefaultServiceAccount:getDefaultServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultServiceAccountComputeResult.fromMap(result);
}
