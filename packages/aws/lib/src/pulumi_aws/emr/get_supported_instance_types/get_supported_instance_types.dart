import 'package:pulumi/pulumi.dart';
import 'get_supported_instance_types_args.dart';
import 'get_supported_instance_types_result.dart';

/// Data source for managing AWS EMR Supported Instance Types.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With a Lifecycle Pre-Condition
///
/// This data source can be used with a lifecycle precondition to ensure a given instance type is supported by EMR.
Future<GetSupportedInstanceTypesResult> getSupportedInstanceTypes(
  GetSupportedInstanceTypesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:emr/getSupportedInstanceTypes:getSupportedInstanceTypes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSupportedInstanceTypesResult.fromMap(result);
}
