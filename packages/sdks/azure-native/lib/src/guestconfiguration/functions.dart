import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_guest_configuration_assignment_args.dart';
import 'get_guest_configuration_assignment_result.dart';
import 'get_guest_configuration_assignments_vmssargs.dart';
import 'get_guest_configuration_assignments_vmssresult.dart';
import 'get_guest_configuration_connected_vmwarev_sphere_assignment_args.dart';
import 'get_guest_configuration_connected_vmwarev_sphere_assignment_result.dart';
import 'get_guest_configuration_hcrpassignment_args.dart';
import 'get_guest_configuration_hcrpassignment_result.dart';

/// Get information about a guest configuration assignment
///
/// Uses Azure REST API version 2024-04-05.
///
/// Other available API versions: 2022-01-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native guestconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_guestconfiguration_get_guest_configuration_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestConfigurationAssignmentResult> getGuestConfigurationAssignment(
  GetGuestConfigurationAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:guestconfiguration:getGuestConfigurationAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestConfigurationAssignmentResult.fromMap(result);
}

pulumi.Output<GetGuestConfigurationAssignmentResult> getGuestConfigurationAssignmentOutput(
  GetGuestConfigurationAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:guestconfiguration:getGuestConfigurationAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuestConfigurationAssignmentResult.fromMap);
}

/// Get information about a guest configuration assignment for VMSS
///
/// Uses Azure REST API version 2024-04-05.
///
/// Other available API versions: 2022-01-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native guestconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_guestconfiguration_get_guest_configuration_assignments_vmssargs_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestConfigurationAssignmentsVMSSResult> getGuestConfigurationAssignmentsVMSS(
  GetGuestConfigurationAssignmentsVMSSArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:guestconfiguration:getGuestConfigurationAssignmentsVMSS',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestConfigurationAssignmentsVMSSResult.fromMap(result);
}

pulumi.Output<GetGuestConfigurationAssignmentsVMSSResult> getGuestConfigurationAssignmentsVMSSOutput(
  GetGuestConfigurationAssignmentsVMSSArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:guestconfiguration:getGuestConfigurationAssignmentsVMSS',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuestConfigurationAssignmentsVMSSResult.fromMap);
}

/// Get information about a guest configuration assignment
///
/// Uses Azure REST API version 2024-04-05.
///
/// Other available API versions: 2022-01-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native guestconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_guestconfiguration_get_guest_configuration_connected_vmwarev_sphere_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestConfigurationConnectedVMwarevSphereAssignmentResult> getGuestConfigurationConnectedVMwarevSphereAssignment(
  GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:guestconfiguration:getGuestConfigurationConnectedVMwarevSphereAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestConfigurationConnectedVMwarevSphereAssignmentResult.fromMap(result);
}

pulumi.Output<GetGuestConfigurationConnectedVMwarevSphereAssignmentResult> getGuestConfigurationConnectedVMwarevSphereAssignmentOutput(
  GetGuestConfigurationConnectedVMwarevSphereAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:guestconfiguration:getGuestConfigurationConnectedVMwarevSphereAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuestConfigurationConnectedVMwarevSphereAssignmentResult.fromMap);
}

/// Get information about a guest configuration assignment
///
/// Uses Azure REST API version 2024-04-05.
///
/// Other available API versions: 2022-01-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native guestconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_guestconfiguration_get_guest_configuration_hcrpassignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestConfigurationHCRPAssignmentResult> getGuestConfigurationHCRPAssignment(
  GetGuestConfigurationHCRPAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:guestconfiguration:getGuestConfigurationHCRPAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestConfigurationHCRPAssignmentResult.fromMap(result);
}

pulumi.Output<GetGuestConfigurationHCRPAssignmentResult> getGuestConfigurationHCRPAssignmentOutput(
  GetGuestConfigurationHCRPAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:guestconfiguration:getGuestConfigurationHCRPAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuestConfigurationHCRPAssignmentResult.fromMap);
}
