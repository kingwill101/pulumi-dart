import 'package:pulumi/pulumi.dart';
import 'get_link_args2.dart';
import 'get_link_result2.dart';

/// Data source for managing an AWS CloudWatch Observability Access Manager Link.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetLinkResult2> getLink2(
  GetLinkArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getLink:getLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLinkResult2.fromMap(result);
}
