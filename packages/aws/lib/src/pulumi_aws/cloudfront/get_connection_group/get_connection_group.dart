import 'package:pulumi/pulumi.dart';
import 'get_connection_group_args.dart';
import 'get_connection_group_result.dart';

/// Use this data source to retrieve information about a CloudFront connection group.
Future<GetConnectionGroupResult> getConnectionGroup(
  GetConnectionGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getConnectionGroup:getConnectionGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionGroupResult.fromMap(result);
}
