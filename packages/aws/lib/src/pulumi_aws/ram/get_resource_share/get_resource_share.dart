import 'package:pulumi/pulumi.dart';
import 'get_resource_share_args.dart';
import 'get_resource_share_result.dart';

/// `aws.ram.ResourceShare` Retrieve information about a RAM Resource Share.
///
/// ## Example Usage
///
///
///
/// ## Search by filters
Future<GetResourceShareResult> getResourceShare(
  GetResourceShareArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ram/getResourceShare:getResourceShare',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceShareResult.fromMap(result);
}
