import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachment_compute_beta_args.dart';
import 'get_service_attachment_compute_beta_result.dart';

/// Returns the specified ServiceAttachment resource in the given scope.
Future<GetServiceAttachmentComputeBetaResult> getServiceAttachmentComputeBeta(
  GetServiceAttachmentComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getServiceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentComputeBetaResult.fromMap(result);
}
