import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_link_args.dart';
import 'get_link_result.dart';

/// Provides details about an existing Network Manager link.
Future<GetLinkResult> getLink(
  GetLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getLink:getLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkResult.fromMap(result);
}
