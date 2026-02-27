import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_types_args.dart';
import 'get_machine_types_result.dart';

/// Provides access to available Google Compute machine types in a zone for a given project.
/// See more about [machine type availability](https://cloud.google.com/compute/docs/regions-zones#available) in the upstream docs.
///
/// To get more information about machine types, see:
///
/// * [API Documentation](https://cloud.google.com/compute/docs/reference/rest/v1/machineTypes/list)
/// * [Comparison Guide](https://cloud.google.com/compute/docs/machine-resource)
///
/// ## Example Usage
///
/// ### Property-Based Availability
///
/// Create a VM instance template for each machine type with 16GB of memory and 8 CPUs available in the provided zone.
///
///
///
/// ### Machine Family Preference
///
/// Create an instance template, preferring `c3` machine family if available in the provided zone, otherwise falling back to `c2` and finally `n2`.
Future<GetMachineTypesResult> getMachineTypes(
  GetMachineTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getMachineTypes:getMachineTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineTypesResult.fromMap(result);
}
