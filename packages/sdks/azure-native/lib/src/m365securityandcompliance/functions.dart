import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_endpoint_connections_adt_apiargs.dart';
import 'get_private_endpoint_connections_adt_apiresult.dart';
import 'get_private_endpoint_connections_comp_args.dart';
import 'get_private_endpoint_connections_comp_result.dart';
import 'get_private_endpoint_connections_for_edmargs.dart';
import 'get_private_endpoint_connections_for_edmresult.dart';
import 'get_private_endpoint_connections_for_mippolicy_sync_args.dart';
import 'get_private_endpoint_connections_for_mippolicy_sync_result.dart';
import 'get_private_endpoint_connections_for_sccpowershell_args.dart';
import 'get_private_endpoint_connections_for_sccpowershell_result.dart';
import 'get_private_endpoint_connections_sec_args.dart';
import 'get_private_endpoint_connections_sec_result.dart';
import 'get_private_link_services_for_edmupload_args.dart';
import 'get_private_link_services_for_edmupload_result.dart';
import 'get_private_link_services_for_m365_compliance_center_args.dart';
import 'get_private_link_services_for_m365_compliance_center_result.dart';
import 'get_private_link_services_for_m365_security_center_args.dart';
import 'get_private_link_services_for_m365_security_center_result.dart';
import 'get_private_link_services_for_mippolicy_sync_args.dart';
import 'get_private_link_services_for_mippolicy_sync_result.dart';
import 'get_private_link_services_for_o365_management_activity_apiargs.dart';
import 'get_private_link_services_for_o365_management_activity_apiresult.dart';
import 'get_private_link_services_for_sccpowershell_args.dart';
import 'get_private_link_services_for_sccpowershell_result.dart';

/// Gets the specified private endpoint connection associated with the service.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_endpoint_connections_adt_apiargs_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionsAdtAPIResult> getPrivateEndpointConnectionsAdtAPI(
  GetPrivateEndpointConnectionsAdtAPIArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsAdtAPI',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionsAdtAPIResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionsAdtAPIResult> getPrivateEndpointConnectionsAdtAPIOutput(
  GetPrivateEndpointConnectionsAdtAPIArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsAdtAPI',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionsAdtAPIResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the service.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_endpoint_connections_comp_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionsCompResult> getPrivateEndpointConnectionsComp(
  GetPrivateEndpointConnectionsCompArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsComp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionsCompResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionsCompResult> getPrivateEndpointConnectionsCompOutput(
  GetPrivateEndpointConnectionsCompArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsComp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionsCompResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the service.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_endpoint_connections_for_edmargs_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionsForEDMResult> getPrivateEndpointConnectionsForEDM(
  GetPrivateEndpointConnectionsForEDMArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsForEDM',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionsForEDMResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionsForEDMResult> getPrivateEndpointConnectionsForEDMOutput(
  GetPrivateEndpointConnectionsForEDMArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsForEDM',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionsForEDMResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the service.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_endpoint_connections_for_mippolicy_sync_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionsForMIPPolicySyncResult> getPrivateEndpointConnectionsForMIPPolicySync(
  GetPrivateEndpointConnectionsForMIPPolicySyncArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsForMIPPolicySync',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionsForMIPPolicySyncResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionsForMIPPolicySyncResult> getPrivateEndpointConnectionsForMIPPolicySyncOutput(
  GetPrivateEndpointConnectionsForMIPPolicySyncArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsForMIPPolicySync',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionsForMIPPolicySyncResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the service.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_endpoint_connections_for_sccpowershell_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionsForSCCPowershellResult> getPrivateEndpointConnectionsForSCCPowershell(
  GetPrivateEndpointConnectionsForSCCPowershellArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsForSCCPowershell',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionsForSCCPowershellResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionsForSCCPowershellResult> getPrivateEndpointConnectionsForSCCPowershellOutput(
  GetPrivateEndpointConnectionsForSCCPowershellArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsForSCCPowershell',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionsForSCCPowershellResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the service.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_endpoint_connections_sec_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionsSecResult> getPrivateEndpointConnectionsSec(
  GetPrivateEndpointConnectionsSecArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsSec',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionsSecResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionsSecResult> getPrivateEndpointConnectionsSecOutput(
  GetPrivateEndpointConnectionsSecArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateEndpointConnectionsSec',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionsSecResult.fromMap);
}

/// Get the metadata of a privateLinkServicesForEDMUpload resource.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_link_services_for_edmupload_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkServicesForEDMUploadResult> getPrivateLinkServicesForEDMUpload(
  GetPrivateLinkServicesForEDMUploadArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForEDMUpload',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkServicesForEDMUploadResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkServicesForEDMUploadResult> getPrivateLinkServicesForEDMUploadOutput(
  GetPrivateLinkServicesForEDMUploadArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForEDMUpload',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkServicesForEDMUploadResult.fromMap);
}

/// Get the metadata of a privateLinkServicesForM365ComplianceCenter resource.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_link_services_for_m365_compliance_center_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkServicesForM365ComplianceCenterResult> getPrivateLinkServicesForM365ComplianceCenter(
  GetPrivateLinkServicesForM365ComplianceCenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForM365ComplianceCenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkServicesForM365ComplianceCenterResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkServicesForM365ComplianceCenterResult> getPrivateLinkServicesForM365ComplianceCenterOutput(
  GetPrivateLinkServicesForM365ComplianceCenterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForM365ComplianceCenter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkServicesForM365ComplianceCenterResult.fromMap);
}

/// Get the metadata of a privateLinkServicesForM365SecurityCenter resource.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_link_services_for_m365_security_center_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkServicesForM365SecurityCenterResult> getPrivateLinkServicesForM365SecurityCenter(
  GetPrivateLinkServicesForM365SecurityCenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForM365SecurityCenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkServicesForM365SecurityCenterResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkServicesForM365SecurityCenterResult> getPrivateLinkServicesForM365SecurityCenterOutput(
  GetPrivateLinkServicesForM365SecurityCenterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForM365SecurityCenter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkServicesForM365SecurityCenterResult.fromMap);
}

/// Get the metadata of a privateLinkServicesForMIPPolicySync resource.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_link_services_for_mippolicy_sync_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkServicesForMIPPolicySyncResult> getPrivateLinkServicesForMIPPolicySync(
  GetPrivateLinkServicesForMIPPolicySyncArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForMIPPolicySync',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkServicesForMIPPolicySyncResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkServicesForMIPPolicySyncResult> getPrivateLinkServicesForMIPPolicySyncOutput(
  GetPrivateLinkServicesForMIPPolicySyncArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForMIPPolicySync',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkServicesForMIPPolicySyncResult.fromMap);
}

/// Get the metadata of a privateLinkServicesForO365ManagementActivityAPI resource.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_link_services_for_o365_management_activity_apiargs_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkServicesForO365ManagementActivityAPIResult> getPrivateLinkServicesForO365ManagementActivityAPI(
  GetPrivateLinkServicesForO365ManagementActivityAPIArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForO365ManagementActivityAPI',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkServicesForO365ManagementActivityAPIResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkServicesForO365ManagementActivityAPIResult> getPrivateLinkServicesForO365ManagementActivityAPIOutput(
  GetPrivateLinkServicesForO365ManagementActivityAPIArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForO365ManagementActivityAPI',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkServicesForO365ManagementActivityAPIResult.fromMap);
}

/// Get the metadata of a privateLinkServicesForSCCPowershell resource.
///
/// Uses Azure REST API version 2021-03-25-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_m365securityandcompliance_get_private_link_services_for_sccpowershell_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkServicesForSCCPowershellResult> getPrivateLinkServicesForSCCPowershell(
  GetPrivateLinkServicesForSCCPowershellArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForSCCPowershell',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkServicesForSCCPowershellResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkServicesForSCCPowershellResult> getPrivateLinkServicesForSCCPowershellOutput(
  GetPrivateLinkServicesForSCCPowershellArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:m365securityandcompliance:getPrivateLinkServicesForSCCPowershell',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkServicesForSCCPowershellResult.fromMap);
}
