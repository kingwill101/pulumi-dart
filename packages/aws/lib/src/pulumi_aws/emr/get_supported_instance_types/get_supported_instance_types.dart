import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:emr/getSupportedInstanceTypes:getSupportedInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSupportedInstanceTypesResult.fromMap(result);
}
