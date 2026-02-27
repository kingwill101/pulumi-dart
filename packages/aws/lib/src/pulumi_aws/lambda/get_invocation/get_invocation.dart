import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_invocation_args.dart';
import 'get_invocation_result.dart';

/// Invokes an AWS Lambda Function and returns its results. Use this data source to execute Lambda functions during Pulumi operations and use their results in other resources or outputs.
///
/// The Lambda function is invoked with [RequestResponse](https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html#API_Invoke_RequestSyntax) invocation type.
///
/// > **Note:** The `aws.lambda.Invocation` data source invokes the function during the first `apply` and every subsequent `plan` when the function is known.
///
/// > **Note:** If you get a `KMSAccessDeniedException: Lambda was unable to decrypt the environment variables because KMS access was denied` error when invoking a Lambda function with environment variables, the IAM role associated with the function may have been deleted and recreated after the function was created. You can fix the problem two ways: 1) updating the function's role to another role and then updating it back again to the recreated role. (When you create a function, Lambda grants permissions on the KMS key to the function's IAM role. If the IAM role is recreated, the grant is no longer valid. Changing the function's role or recreating the function causes Lambda to update the grant.)
///
/// ## Example Usage
///
/// ### Basic Invocation
///
///
///
/// ### Dynamic Resource Configuration
Future<GetInvocationResult> getInvocation(
  GetInvocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getInvocation:getInvocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInvocationResult.fromMap(result);
}
