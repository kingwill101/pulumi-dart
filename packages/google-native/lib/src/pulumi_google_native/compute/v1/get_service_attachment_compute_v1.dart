import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachment_compute_v1_args.dart';
import 'get_service_attachment_compute_v1_result.dart';

/// Returns the specified ServiceAttachment resource in the given scope.
Future<GetServiceAttachmentComputeV1Result> getServiceAttachmentComputeV1(
  GetServiceAttachmentComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getServiceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentComputeV1Result.fromMap(result);
}
