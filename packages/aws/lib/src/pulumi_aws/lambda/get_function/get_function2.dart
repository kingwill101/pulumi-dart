import 'package:pulumi/pulumi.dart';
import 'get_function_args2.dart';
import 'get_function_result2.dart';

/// Provides details about an AWS Lambda Function. Use this data source to obtain information about an existing Lambda function for use in other resources or as a reference for function configurations.
///
/// > **Note:** This data source returns information about the latest version or alias specified by the `qualifier`. If no `qualifier` is provided, it returns information about the most recent published version, or `$LATEST` if no published version exists.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Using Function Alias
///
///
///
/// ### Function Configuration Reference
///
///
///
/// ### Function Version Management
///
///
///
/// ### Accessing Durable Configuration
Future<GetFunctionResult2> getFunction2(
  GetFunctionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunction:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult2.fromMap(result);
}
