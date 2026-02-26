import 'package:pulumi/pulumi.dart';
import 'get_endpoint_attachment_args2.dart';
import 'get_endpoint_attachment_result2.dart';

/// Gets details of a single EndpointAttachment.
Future<GetEndpointAttachmentResult2> getEndpointAttachment2(
  GetEndpointAttachmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getEndpointAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointAttachmentResult2.fromMap(result);
}
