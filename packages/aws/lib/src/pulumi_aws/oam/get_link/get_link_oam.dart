import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_link_oam_args.dart';
import 'get_link_oam_result.dart';

/// Data source for managing an AWS CloudWatch Observability Access Manager Link.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetLinkOamResult> getLinkOam(
  GetLinkOamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getLink:getLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkOamResult.fromMap(result);
}
