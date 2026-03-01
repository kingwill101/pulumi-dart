import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_b2_ctenant_args.dart';
import 'get_b2_ctenant_result.dart';
import 'get_ciamtenant_args.dart';
import 'get_ciamtenant_result.dart';
import 'get_guest_usage_args.dart';
import 'get_guest_usage_result.dart';

/// Get the Azure AD B2C tenant resource.
///
/// Uses Azure REST API version 2023-05-17-preview.
///
/// Other available API versions: 2021-04-01, 2023-01-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureactivedirectory [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureactivedirectory_get_b2_ctenant_args_doc}
/// [options] Invoke options controlling this call.
Future<GetB2CTenantResult> getB2CTenant(
  GetB2CTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureactivedirectory:getB2CTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetB2CTenantResult.fromMap(result);
}

/// Get the Azure AD for customers tenant resource.
///
/// Uses Azure REST API version 2023-05-17-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureactivedirectory_get_ciamtenant_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCIAMTenantResult> getCIAMTenant(
  GetCIAMTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureactivedirectory:getCIAMTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCIAMTenantResult.fromMap(result);
}

/// Gets a Guest Usages resource for the Microsoft.AzureActiveDirectory resource provider
///
/// Uses Azure REST API version 2023-05-17-preview.
///
/// Other available API versions: 2021-04-01, 2023-01-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureactivedirectory [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azureactivedirectory_get_guest_usage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestUsageResult> getGuestUsage(
  GetGuestUsageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azureactivedirectory:getGuestUsage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestUsageResult.fromMap(result);
}
