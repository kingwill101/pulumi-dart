import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_profile_args.dart';
import 'get_configuration_profile_assignment_args.dart';
import 'get_configuration_profile_assignment_result.dart';
import 'get_configuration_profile_hciassignment_args.dart';
import 'get_configuration_profile_hciassignment_result.dart';
import 'get_configuration_profile_hcrpassignment_args.dart';
import 'get_configuration_profile_hcrpassignment_result.dart';
import 'get_configuration_profile_result.dart';
import 'get_configuration_profiles_version_args.dart';
import 'get_configuration_profiles_version_result.dart';

/// Get information about a configuration profile
///
/// Uses Azure REST API version 2022-05-04.
///
/// Other available API versions: 2021-04-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automanage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automanage_get_configuration_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationProfileResult> getConfigurationProfile(
  GetConfigurationProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automanage:getConfigurationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfileResult.fromMap(result);
}

/// Get information about a configuration profile assignment
///
/// Uses Azure REST API version 2022-05-04.
///
/// Other available API versions: 2020-06-30-preview, 2021-04-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automanage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automanage_get_configuration_profile_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationProfileAssignmentResult> getConfigurationProfileAssignment(
  GetConfigurationProfileAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automanage:getConfigurationProfileAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfileAssignmentResult.fromMap(result);
}

/// Get information about a configuration profile assignment
///
/// Uses Azure REST API version 2022-05-04.
///
/// Other available API versions: 2021-04-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automanage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automanage_get_configuration_profile_hciassignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationProfileHCIAssignmentResult> getConfigurationProfileHCIAssignment(
  GetConfigurationProfileHCIAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automanage:getConfigurationProfileHCIAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfileHCIAssignmentResult.fromMap(result);
}

/// Get information about a configuration profile assignment
///
/// Uses Azure REST API version 2022-05-04.
///
/// Other available API versions: 2021-04-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automanage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automanage_get_configuration_profile_hcrpassignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationProfileHCRPAssignmentResult> getConfigurationProfileHCRPAssignment(
  GetConfigurationProfileHCRPAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automanage:getConfigurationProfileHCRPAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfileHCRPAssignmentResult.fromMap(result);
}

/// Get information about a configuration profile version
///
/// Uses Azure REST API version 2022-05-04.
///
/// Other available API versions: 2021-04-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automanage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automanage_get_configuration_profiles_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationProfilesVersionResult> getConfigurationProfilesVersion(
  GetConfigurationProfilesVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automanage:getConfigurationProfilesVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfilesVersionResult.fromMap(result);
}
