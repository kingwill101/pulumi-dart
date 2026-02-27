import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_args.dart';
import 'get_region_result.dart';

/// `aws.getRegion` provides details about a specific AWS Region.
///
/// As well as validating a given Region name this resource can be used to
/// discover the name of the Region configured within the provider. The latter
/// can be useful in a child module which is inheriting an AWS provider
/// configuration from its parent module.
///
/// ## Example Usage
///
/// The following example shows how the resource might be used to obtain
/// the name of the AWS Region configured on the provider.
Future<GetRegionResult> getRegion(
  GetRegionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getRegion:getRegion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionResult.fromMap(result);
}
