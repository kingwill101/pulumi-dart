import 'package:pulumi/pulumi.dart';
import 'get_lambda_function_association_args.dart';
import 'get_lambda_function_association_result.dart';

/// Provides details about a specific Connect Lambda Function Association.
Future<GetLambdaFunctionAssociationResult> getLambdaFunctionAssociation(
  GetLambdaFunctionAssociationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getLambdaFunctionAssociation:getLambdaFunctionAssociation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLambdaFunctionAssociationResult.fromMap(result);
}
