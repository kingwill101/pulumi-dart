import 'package:pulumi/pulumi.dart';
import 'get_link_args.dart';
import 'get_link_result.dart';

/// Provides details about an existing Network Manager link.
Future<GetLinkResult> getLink(
  GetLinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getLink:getLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLinkResult.fromMap(result);
}
