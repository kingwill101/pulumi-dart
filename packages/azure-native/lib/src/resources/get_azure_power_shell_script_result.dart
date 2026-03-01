// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_configuration_response.dart';
import 'environment_variable_response.dart';
import 'managed_service_identity_response.dart';
import 'script_status_response.dart';
import 'storage_account_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzurePowerShellScript.
class GetAzurePowerShellScriptResult {
  /// Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  final String? arguments;
  /// Azure PowerShell module version to be used.
  final String azPowerShellVersion;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  final String? cleanupPreference;
  /// Container settings.
  final ContainerConfigurationResponse? containerSettings;
  /// The environment variables to pass over to the script.
  final List<EnvironmentVariableResponse>? environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  final String? forceUpdateTag;
  /// String Id used to locate any resource on Azure.
  final String id;
  /// Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  final ManagedServiceIdentityResponse? identity;
  /// Type of the script.
  /// Expected value is 'AzurePowerShell'.
  final String kind;
  /// The location of the ACI and the storage account for the deployment script.
  final String location;
  /// Name of this resource.
  final String name;
  /// List of script outputs.
  final Map<String, dynamic> outputs;
  /// Uri for the script. This is the entry point for the external script.
  final String? primaryScriptUri;
  /// State of the script execution. This only appears in the response.
  final String provisioningState;
  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  final String retentionInterval;
  /// Script body.
  final String? scriptContent;
  /// Contains the results of script execution.
  final ScriptStatusResponse status;
  /// Storage Account settings.
  final StorageAccountConfigurationResponse? storageAccountSettings;
  /// Supporting files for the external script.
  final List<String>? supportingScriptUris;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  final String? timeout;
  /// Type of this resource.
  final String type;

  /// Creates a new [GetAzurePowerShellScriptResult].
  /// [arguments] Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  /// [azPowerShellVersion] Azure PowerShell module version to be used.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cleanupPreference] The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  /// [containerSettings] Container settings.
  /// [environmentVariables] The environment variables to pass over to the script.
  /// [forceUpdateTag] Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  /// [id] String Id used to locate any resource on Azure.
  /// [identity] Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  /// [kind] Type of the script.
  /// [location] The location of the ACI and the storage account for the deployment script.
  /// [name] Name of this resource.
  /// [outputs] List of script outputs.
  /// [primaryScriptUri] Uri for the script. This is the entry point for the external script.
  /// [provisioningState] State of the script execution. This only appears in the response.
  /// [retentionInterval] Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  /// [scriptContent] Script body.
  /// [status] Contains the results of script execution.
  /// [storageAccountSettings] Storage Account settings.
  /// [supportingScriptUris] Supporting files for the external script.
  /// [systemData] The system metadata related to this resource.
  /// [tags] Resource tags.
  /// [timeout] Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  /// [type] Type of this resource.
  GetAzurePowerShellScriptResult({
    this.arguments,
    required this.azPowerShellVersion,
    required this.azureApiVersion,
    this.cleanupPreference,
    this.containerSettings,
    this.environmentVariables,
    this.forceUpdateTag,
    required this.id,
    this.identity,
    required this.kind,
    required this.location,
    required this.name,
    required this.outputs,
    this.primaryScriptUri,
    required this.provisioningState,
    required this.retentionInterval,
    this.scriptContent,
    required this.status,
    this.storageAccountSettings,
    this.supportingScriptUris,
    required this.systemData,
    this.tags,
    this.timeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'azPowerShellVersion': azPowerShellVersion,
      'azureApiVersion': azureApiVersion,
      'cleanupPreference': ?cleanupPreference,
      'containerSettings': ?containerSettings == null ? null : containerSettings!.toMap(),
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariableResponse, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': kind,
      'location': location,
      'name': name,
      'outputs': outputs,
      'primaryScriptUri': ?primaryScriptUri,
      'provisioningState': provisioningState,
      'retentionInterval': retentionInterval,
      'scriptContent': ?scriptContent,
      'status': status.toMap(),
      'storageAccountSettings': ?storageAccountSettings == null ? null : storageAccountSettings!.toMap(),
      'supportingScriptUris': ?supportingScriptUris,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeout': ?timeout,
      'type': type,
    };
  }

  factory GetAzurePowerShellScriptResult.fromMap(Map<String, dynamic> map) {
    return GetAzurePowerShellScriptResult(
      arguments: map['arguments'] == null ? null : map['arguments'] as String,
      azPowerShellVersion: map['azPowerShellVersion'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      cleanupPreference: map['cleanupPreference'] == null ? null : map['cleanupPreference'] as String,
      containerSettings: map['containerSettings'] == null ? null : ContainerConfigurationResponse.fromMap((map['containerSettings'] as Map).cast<String, dynamic>()),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariableResponse>(map['environmentVariables'], (value) => EnvironmentVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outputs: (map['outputs'] as Map).cast<String, dynamic>(),
      primaryScriptUri: map['primaryScriptUri'] == null ? null : map['primaryScriptUri'] as String,
      provisioningState: map['provisioningState'] as String,
      retentionInterval: map['retentionInterval'] as String,
      scriptContent: map['scriptContent'] == null ? null : map['scriptContent'] as String,
      status: ScriptStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      storageAccountSettings: map['storageAccountSettings'] == null ? null : StorageAccountConfigurationResponse.fromMap((map['storageAccountSettings'] as Map).cast<String, dynamic>()),
      supportingScriptUris: map['supportingScriptUris'] == null ? null : (map['supportingScriptUris'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      type: map['type'] as String,
    );
  }
}

