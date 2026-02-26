import 'package:pulumi/pulumi.dart';
import 'get_service_attachment_args3.dart';
import 'get_service_attachment_result3.dart';

/// Returns the specified ServiceAttachment resource in the given scope.
Future<GetServiceAttachmentResult3> getServiceAttachment3(
  GetServiceAttachmentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getServiceAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentResult3.fromMap(result);
}
