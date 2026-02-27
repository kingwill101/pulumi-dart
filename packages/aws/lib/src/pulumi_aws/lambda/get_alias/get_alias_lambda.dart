import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_lambda_args.dart';
import 'get_alias_lambda_result.dart';

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
Future<GetAliasLambdaResult> getAliasLambda(
  GetAliasLambdaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getAlias:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasLambdaResult.fromMap(result);
}
