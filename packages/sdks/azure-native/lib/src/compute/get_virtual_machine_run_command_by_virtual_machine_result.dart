// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_input_parameter_response.dart';
import 'run_command_managed_identity_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_run_command_instance_view_response.dart';
import 'virtual_machine_run_command_script_source_response.dart';

/// Result data returned by getVirtualMachineRunCommandByVirtualMachine.
class GetVirtualMachineRunCommandByVirtualMachineResult {
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

  /// Creates a new [GetVirtualMachineRunCommandByVirtualMachineResult].
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
  GetVirtualMachineRunCommandByVirtualMachineResult({
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
      'errorBlobManagedIdentity': ?errorBlobManagedIdentity?.toMap(),
      'errorBlobUri': ?errorBlobUri,
      'id': id,
      'instanceView': instanceView.toMap(),
      'location': location,
      'name': name,
      'outputBlobManagedIdentity': ?outputBlobManagedIdentity?.toMap(),
      'outputBlobUri': ?outputBlobUri,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<RunCommandInputParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'protectedParameters': ?(() { final guardedValue = protectedParameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<RunCommandInputParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'runAsPassword': ?runAsPassword,
      'runAsUser': ?runAsUser,
      'source': ?source?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeoutInSeconds': ?timeoutInSeconds,
      'treatFailureAsDeploymentFailure': ?treatFailureAsDeploymentFailure,
      'type': type,
    };
  }

  factory GetVirtualMachineRunCommandByVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineRunCommandByVirtualMachineResult(
      asyncExecution: (() { final guardedValue = map['asyncExecution']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      errorBlobManagedIdentity: (() { final guardedValue = map['errorBlobManagedIdentity']; if (guardedValue == null) return null; return RunCommandManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      errorBlobUri: (() { final guardedValue = map['errorBlobUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      instanceView: VirtualMachineRunCommandInstanceViewResponse.fromMap((map['instanceView']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      outputBlobManagedIdentity: (() { final guardedValue = map['outputBlobManagedIdentity']; if (guardedValue == null) return null; return RunCommandManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      outputBlobUri: (() { final guardedValue = map['outputBlobUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RunCommandInputParameterResponse>(guardedValue, (value) => RunCommandInputParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      protectedParameters: (() { final guardedValue = map['protectedParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RunCommandInputParameterResponse>(guardedValue, (value) => RunCommandInputParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      runAsPassword: (() { final guardedValue = map['runAsPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runAsUser: (() { final guardedValue = map['runAsUser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return VirtualMachineRunCommandScriptSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      treatFailureAsDeploymentFailure: (() { final guardedValue = map['treatFailureAsDeploymentFailure']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      type: map['type'] as String,
    );
  }
}

