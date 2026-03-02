// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_input_parameter_response.dart';
import 'run_command_managed_identity_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_run_command_instance_view_response.dart';
import 'virtual_machine_run_command_script_source_response.dart';

/// Result data returned by getVirtualMachineScaleSetVMRunCommand.
class GetVirtualMachineScaleSetVMRunCommandResult {
  /// Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.
  final bool? asyncExecution;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  final RunCommandManagedIdentityResponse? errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  final String? errorBlobUri;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The virtual machine run command instance view.
  final VirtualMachineRunCommandInstanceViewResponse instanceView;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// User-assigned managed identity that has access to outputBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  final RunCommandManagedIdentityResponse? outputBlobManagedIdentity;
  /// Specifies the Azure storage blob where script output stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer outputBlobManagedIdentity parameter.
  final String? outputBlobUri;
  /// The parameters used by the script.
  final List<RunCommandInputParameterResponse>? parameters;
  /// The parameters used by the script.
  final List<RunCommandInputParameterResponse>? protectedParameters;
  /// The provisioning state, which only appears in the response. If treatFailureAsDeploymentFailure set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If treatFailureAsDeploymentFailure set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results
  final String provisioningState;
  /// Specifies the user account password on the VM when executing the run command.
  final String? runAsPassword;
  /// Specifies the user account on the VM when executing the run command.
  final String? runAsUser;
  /// The source of the run command script.
  final VirtualMachineRunCommandScriptSourceResponse? source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The timeout in seconds to execute the run command.
  final int? timeoutInSeconds;
  /// Optional. If set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results
  final bool? treatFailureAsDeploymentFailure;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetVirtualMachineScaleSetVMRunCommandResult].
  /// [asyncExecution] Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errorBlobManagedIdentity] User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  /// [errorBlobUri] Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceView] The virtual machine run command instance view.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [outputBlobManagedIdentity] User-assigned managed identity that has access to outputBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  /// [outputBlobUri] Specifies the Azure storage blob where script output stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer outputBlobManagedIdentity parameter.
  /// [parameters] The parameters used by the script.
  /// [protectedParameters] The parameters used by the script.
  /// [provisioningState] The provisioning state, which only appears in the response. If treatFailureAsDeploymentFailure set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If treatFailureAsDeploymentFailure set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results
  /// [runAsPassword] Specifies the user account password on the VM when executing the run command.
  /// [runAsUser] Specifies the user account on the VM when executing the run command.
  /// [source] The source of the run command script.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeoutInSeconds] The timeout in seconds to execute the run command.
  /// [treatFailureAsDeploymentFailure] Optional. If set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetVirtualMachineScaleSetVMRunCommandResult({
    this.asyncExecution,
    required this.azureApiVersion,
    this.errorBlobManagedIdentity,
    this.errorBlobUri,
    required this.id,
    required this.instanceView,
    required this.location,
    required this.name,
    this.outputBlobManagedIdentity,
    this.outputBlobUri,
    this.parameters,
    this.protectedParameters,
    required this.provisioningState,
    this.runAsPassword,
    this.runAsUser,
    this.source,
    required this.systemData,
    this.tags,
    this.timeoutInSeconds,
    this.treatFailureAsDeploymentFailure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncExecution': ?asyncExecution,
      'azureApiVersion': azureApiVersion,
      'errorBlobManagedIdentity': ?errorBlobManagedIdentity == null ? null : errorBlobManagedIdentity!.toMap(),
      'errorBlobUri': ?errorBlobUri,
      'id': id,
      'instanceView': instanceView.toMap(),
      'location': location,
      'name': name,
      'outputBlobManagedIdentity': ?outputBlobManagedIdentity == null ? null : outputBlobManagedIdentity!.toMap(),
      'outputBlobUri': ?outputBlobUri,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<RunCommandInputParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'protectedParameters': ?protectedParameters == null ? null : pulumi.Input.encodeList<RunCommandInputParameterResponse, Map<String, dynamic>>(protectedParameters!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'runAsPassword': ?runAsPassword,
      'runAsUser': ?runAsUser,
      'source': ?source == null ? null : source!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeoutInSeconds': ?timeoutInSeconds,
      'treatFailureAsDeploymentFailure': ?treatFailureAsDeploymentFailure,
      'type': type,
    };
  }

  factory GetVirtualMachineScaleSetVMRunCommandResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetVMRunCommandResult(
      asyncExecution: map['asyncExecution'] == null ? null : map['asyncExecution']! as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      errorBlobManagedIdentity: map['errorBlobManagedIdentity'] == null ? null : RunCommandManagedIdentityResponse.fromMap((map['errorBlobManagedIdentity']! as Map).cast<String, dynamic>()),
      errorBlobUri: map['errorBlobUri'] == null ? null : map['errorBlobUri']! as String,
      id: map['id'] as String,
      instanceView: VirtualMachineRunCommandInstanceViewResponse.fromMap((map['instanceView'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      outputBlobManagedIdentity: map['outputBlobManagedIdentity'] == null ? null : RunCommandManagedIdentityResponse.fromMap((map['outputBlobManagedIdentity']! as Map).cast<String, dynamic>()),
      outputBlobUri: map['outputBlobUri'] == null ? null : map['outputBlobUri']! as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<RunCommandInputParameterResponse>(map['parameters']!, (value) => RunCommandInputParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectedParameters: map['protectedParameters'] == null ? null : pulumi.Input.decodeList<RunCommandInputParameterResponse>(map['protectedParameters']!, (value) => RunCommandInputParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      runAsPassword: map['runAsPassword'] == null ? null : map['runAsPassword']! as String,
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser']! as String,
      source: map['source'] == null ? null : VirtualMachineRunCommandScriptSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds']! as int,
      treatFailureAsDeploymentFailure: map['treatFailureAsDeploymentFailure'] == null ? null : map['treatFailureAsDeploymentFailure']! as bool,
      type: map['type'] as String,
    );
  }
}

