import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_links_args.dart';
import 'get_links_result.dart';

/// Provides details about existing Network Manager links.
Future<GetLinksResult> getLinks(
  GetLinksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getLinks:getLinks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinksResult.fromMap(result);
}
