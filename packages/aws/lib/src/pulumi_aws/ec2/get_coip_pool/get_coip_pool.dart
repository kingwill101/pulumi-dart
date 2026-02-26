import 'package:pulumi/pulumi.dart';
import 'get_coip_pool_args.dart';
import 'get_coip_pool_result.dart';

/// Provides details about a specific EC2 Customer-Owned IP Pool.
///
/// This data source can prove useful when a module accepts a coip pool id as
/// an input variable and needs to, for example, determine the CIDR block of that
/// COIP Pool.
///
/// ## Example Usage
///
/// The following example returns a specific coip pool ID
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// configuration:
/// coipPoolId:
/// type: dynamic
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:ec2:getCoipPool
/// arguments:
/// id: ${coipPoolId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCoipPoolResult> getCoipPool(
  GetCoipPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCoipPool:getCoipPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCoipPoolResult.fromMap(result);
}
