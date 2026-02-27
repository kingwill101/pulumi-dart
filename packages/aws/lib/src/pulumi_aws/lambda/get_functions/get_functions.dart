import 'package:pulumi/pulumi.dart';
import 'get_functions_args.dart';
import 'get_functions_result.dart';

/// Provides a list of AWS Lambda Functions in the current region. Use this data source to discover existing Lambda functions for inventory, monitoring, or bulk operations.
///
/// ## Example Usage
///
/// ### List All Functions
///
///
///
/// ### Use Function List for Bulk Operations
///
///
///
/// ### Create Function Inventory
Future<GetFunctionsResult> getFunctions(
  GetFunctionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunctions:getFunctions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionsResult.fromMap(result);
}
