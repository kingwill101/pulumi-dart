import 'package:pulumi/pulumi.dart';
import 'get_link_args.dart';
import 'get_link_result.dart';

/// Gets a link.
Future<GetLinkResult> getLink(
  GetLinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLinkResult.fromMap(result);
}
