import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_associations_interface_args.dart';
import 'get_associations_interface_result.dart';
import 'get_frontends_interface_args.dart';
import 'get_frontends_interface_result.dart';
import 'get_security_policies_interface_args.dart';
import 'get_security_policies_interface_result.dart';
import 'get_traffic_controller_interface_args.dart';
import 'get_traffic_controller_interface_result.dart';

/// Get a Association
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-11-01, 2024-05-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicenetworking [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicenetworking_get_associations_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssociationsInterfaceResult> getAssociationsInterface(
  GetAssociationsInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicenetworking:getAssociationsInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssociationsInterfaceResult.fromMap(result);
}

/// Get a Frontend
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-11-01, 2024-05-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicenetworking [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicenetworking_get_frontends_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontendsInterfaceResult> getFrontendsInterface(
  GetFrontendsInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicenetworking:getFrontendsInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontendsInterfaceResult.fromMap(result);
}

/// Get a SecurityPolicy
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2024-05-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicenetworking [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicenetworking_get_security_policies_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPoliciesInterfaceResult> getSecurityPoliciesInterface(
  GetSecurityPoliciesInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicenetworking:getSecurityPoliciesInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPoliciesInterfaceResult.fromMap(result);
}

/// Get a TrafficController
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-05-01-preview, 2023-11-01, 2024-05-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicenetworking [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicenetworking_get_traffic_controller_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficControllerInterfaceResult> getTrafficControllerInterface(
  GetTrafficControllerInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:servicenetworking:getTrafficControllerInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficControllerInterfaceResult.fromMap(result);
}
