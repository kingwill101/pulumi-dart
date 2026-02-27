import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lambda_function_association_args.dart';
import 'get_lambda_function_association_result.dart';

/// Provides details about a specific Connect Lambda Function Association.
Future<GetLambdaFunctionAssociationResult> getLambdaFunctionAssociation(
  GetLambdaFunctionAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getLambdaFunctionAssociation:getLambdaFunctionAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLambdaFunctionAssociationResult.fromMap(result);
}
