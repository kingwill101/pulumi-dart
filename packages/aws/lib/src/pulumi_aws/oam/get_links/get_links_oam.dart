import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_links_oam_args.dart';
import 'get_links_oam_result.dart';

/// Data source for managing an AWS CloudWatch Observability Access Manager Links.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetLinksOamResult> getLinksOam(
  GetLinksOamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getLinks:getLinks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinksOamResult.fromMap(result);
}
