import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registration_assignment_args.dart';
import 'get_registration_assignment_result.dart';
import 'get_registration_definition_args.dart';
import 'get_registration_definition_result.dart';

/// Gets the details of the specified registration assignment.
///
/// Uses Azure REST API version 2022-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedservices_get_registration_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationAssignmentResult> getRegistrationAssignment(
  GetRegistrationAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managedservices:getRegistrationAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationAssignmentResult.fromMap(result);
}

pulumi.Output<GetRegistrationAssignmentResult> getRegistrationAssignmentOutput(
  GetRegistrationAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managedservices:getRegistrationAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistrationAssignmentResult.fromMap);
}

/// Gets the registration definition details.
///
/// Uses Azure REST API version 2022-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_managedservices_get_registration_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationDefinitionResult> getRegistrationDefinition(
  GetRegistrationDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managedservices:getRegistrationDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationDefinitionResult.fromMap(result);
}

pulumi.Output<GetRegistrationDefinitionResult> getRegistrationDefinitionOutput(
  GetRegistrationDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managedservices:getRegistrationDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistrationDefinitionResult.fromMap);
}
