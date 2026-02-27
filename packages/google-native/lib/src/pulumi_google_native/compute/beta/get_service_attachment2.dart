import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_attachment_args2.dart';
import 'get_service_attachment_result2.dart';

/// Returns the specified ServiceAttachment resource in the given scope.
Future<GetServiceAttachmentResult2> getServiceAttachment2(
  GetServiceAttachmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getServiceAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentResult2.fromMap(result);
}
