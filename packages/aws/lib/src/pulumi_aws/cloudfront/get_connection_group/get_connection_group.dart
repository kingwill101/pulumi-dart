import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_group_args.dart';
import 'get_connection_group_result.dart';

/// Use this data source to retrieve information about a CloudFront connection group.
Future<GetConnectionGroupResult> getConnectionGroup(
  GetConnectionGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getConnectionGroup:getConnectionGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionGroupResult.fromMap(result);
}
