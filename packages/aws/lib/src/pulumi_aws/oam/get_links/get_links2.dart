import 'package:pulumi/pulumi.dart';
import 'get_links_args2.dart';
import 'get_links_result2.dart';

/// Data source for managing an AWS CloudWatch Observability Access Manager Links.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetLinksResult2> getLinks2(
  GetLinksArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getLinks:getLinks',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLinksResult2.fromMap(result);
}
