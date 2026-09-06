import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_employee_args.dart';
import 'get_employee_result.dart';

/// Get a Employee
///
/// Uses Azure REST API version 2021-11-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native contoso [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_contoso_get_employee_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEmployeeResult> getEmployee(
  GetEmployeeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:contoso:getEmployee',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmployeeResult.fromMap(result);
}

pulumi.Output<GetEmployeeResult> getEmployeeOutput(
  GetEmployeeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:contoso:getEmployee',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEmployeeResult.fromMap);
}
