import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_attachment_args.dart';
import 'get_endpoint_attachment_result.dart';

/// Gets the endpoint attachment.
Future<GetEndpointAttachmentResult> getEndpointAttachment(
  GetEndpointAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEndpointAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAttachmentResult.fromMap(result);
}
