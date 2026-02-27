import 'package:pulumi/pulumi.dart';
import 'get_resources_args.dart';
import 'get_resources_result.dart';

/// Provides details about resource tagging.
///
/// ## Example Usage
///
/// ### Get All Resource Tag Mappings
///
///
///
/// ### Filter By Tag Key and Value
///
///
///
/// ### Filter By Resource Type
Future<GetResourcesResult> getResources(
  GetResourcesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resourcegroupstaggingapi/getResources:getResources',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcesResult.fromMap(result);
}
