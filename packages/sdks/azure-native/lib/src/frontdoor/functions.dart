import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experiment_args.dart';
import 'get_experiment_result.dart';
import 'get_front_door_args.dart';
import 'get_front_door_result.dart';
import 'get_network_experiment_profile_args.dart';
import 'get_network_experiment_profile_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';
import 'get_rules_engine_args.dart';
import 'get_rules_engine_result.dart';

/// Gets an Experiment by ExperimentName
///
/// Uses Azure REST API version 2025-11-01.
///
/// Other available API versions: 2019-11-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_frontdoor_get_experiment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentResult> getExperiment(
  GetExperimentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:frontdoor:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult.fromMap(result);
}

/// Gets a Front Door with the specified Front Door name under the specified subscription and resource group.
///
/// Uses Azure REST API version 2025-11-01.
///
/// Other available API versions: 2018-08-01, 2019-04-01, 2019-05-01, 2020-01-01, 2020-04-01, 2020-05-01, 2021-06-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_frontdoor_get_front_door_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontDoorResult> getFrontDoor(
  GetFrontDoorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:frontdoor:getFrontDoor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontDoorResult.fromMap(result);
}

/// Gets an NetworkExperiment Profile by ProfileName
///
/// Uses Azure REST API version 2025-11-01.
///
/// Other available API versions: 2019-11-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_frontdoor_get_network_experiment_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkExperimentProfileResult> getNetworkExperimentProfile(
  GetNetworkExperimentProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:frontdoor:getNetworkExperimentProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkExperimentProfileResult.fromMap(result);
}

/// Retrieve protection policy with specified name within a resource group.
///
/// Uses Azure REST API version 2025-11-01.
///
/// Other available API versions: 2018-08-01, 2019-03-01, 2019-10-01, 2020-04-01, 2020-11-01, 2021-06-01, 2022-05-01, 2024-02-01, 2025-03-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_frontdoor_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:frontdoor:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

/// Gets a Rules Engine Configuration with the specified name within the specified Front Door.
///
/// Uses Azure REST API version 2025-11-01.
///
/// Other available API versions: 2020-01-01, 2020-04-01, 2020-05-01, 2021-06-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_frontdoor_get_rules_engine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRulesEngineResult> getRulesEngine(
  GetRulesEngineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:frontdoor:getRulesEngine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesEngineResult.fromMap(result);
}
