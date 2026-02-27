import 'package:pulumi/pulumi.dart';
import 'get_alias_args2.dart';
import 'get_alias_result2.dart';

/// Provides details about an AWS Lambda Alias. Use this data source to retrieve information about an existing Lambda function alias for traffic management, deployment strategies, or API integrations.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### API Gateway Integration
///
///
///
/// ### Deployment Version Tracking
///
///
///
/// ### EventBridge Rule Target
Future<GetAliasResult2> getAlias2(
  GetAliasArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getAlias:getAlias',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAliasResult2.fromMap(result);
}
