import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_attachment_connectors_v1_args.dart';
import 'get_endpoint_attachment_connectors_v1_result.dart';

/// Gets details of a single EndpointAttachment.
Future<GetEndpointAttachmentConnectorsV1Result>
    getEndpointAttachmentConnectorsV1(
  GetEndpointAttachmentConnectorsV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getEndpointAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAttachmentConnectorsV1Result.fromMap(result);
}
