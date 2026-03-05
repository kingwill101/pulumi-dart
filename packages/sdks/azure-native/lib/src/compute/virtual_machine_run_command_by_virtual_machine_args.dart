// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_input_parameter.dart';
import 'run_command_managed_identity.dart';
import 'virtual_machine_run_command_script_source.dart';

/// {@template pulumi_compute_virtual_machine_run_command_by_virtual_machine_args_doc}
/// The set of arguments for VirtualMachineRunCommandByVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_run_command_by_virtual_machine_args_doc}
class VirtualMachineRunCommandByVirtualMachineArgs {
  /// Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.
  final pulumi.Input<bool>? asyncExecution;
  /// User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  final pulumi.Input<RunCommandManagedIdentity>? errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  final pulumi.Input<String>? errorBlobUri;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// User-assigned managed identity that has access to outputBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  final pulumi.Input<RunCommandManagedIdentity>? outputBlobManagedIdentity;
  /// Specifies the Azure storage blob where script output stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer outputBlobManagedIdentity parameter.
  final pulumi.Input<String>? outputBlobUri;
  /// The parameters used by the script.
  final pulumi.Input<List<RunCommandInputParameter>>? parameters;
  /// The parameters used by the script.
  final pulumi.Input<List<RunCommandInputParameter>>? protectedParameters;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the user account password on the VM when executing the run command.
  final pulumi.Input<String>? runAsPassword;
  /// Specifies the user account on the VM when executing the run command.
  final pulumi.Input<String>? runAsUser;
  /// The name of the VirtualMachineRunCommand
  final pulumi.Input<String>? runCommandName;
  /// The source of the run command script.
  final pulumi.Input<VirtualMachineRunCommandScriptSource>? source;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The timeout in seconds to execute the run command.
  final pulumi.Input<int>? timeoutInSeconds;
  /// Optional. If set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results
  final pulumi.Input<bool>? treatFailureAsDeploymentFailure;
  /// The name of the VirtualMachine
  final pulumi.Input<String> vmName;

  /// Creates a new [VirtualMachineRunCommandByVirtualMachineArgs].
  /// [asyncExecution] Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.
  /// [errorBlobManagedIdentity] User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  /// [errorBlobUri] Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  /// [location] The geo-location where the resource lives
  /// [outputBlobManagedIdentity] User-assigned managed identity that has access to outputBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  /// [outputBlobUri] Specifies the Azure storage blob where script output stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer outputBlobManagedIdentity parameter.
  /// [parameters] The parameters used by the script.
  /// [protectedParameters] The parameters used by the script.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runAsPassword] Specifies the user account password on the VM when executing the run command.
  /// [runAsUser] Specifies the user account on the VM when executing the run command.
  /// [runCommandName] The name of the VirtualMachineRunCommand
  /// [source] The source of the run command script.
  /// [tags] Resource tags.
  /// [timeoutInSeconds] The timeout in seconds to execute the run command.
  /// [treatFailureAsDeploymentFailure] Optional. If set to true, any failure in the script will fail the deployment and ProvisioningState will be marked as Failed. If set to false, ProvisioningState would only reflect whether the run command was run or not by the extensions platform, it would not indicate whether script failed in case of script failures. See instance view of run command in case of script failures to see executionMessage, output, error: https://aka.ms/runcommandmanaged#get-execution-status-and-results
  /// [vmName] The name of the VirtualMachine
  VirtualMachineRunCommandByVirtualMachineArgs({
    this.asyncExecution,
    this.errorBlobManagedIdentity,
    this.errorBlobUri,
    this.location,
    this.outputBlobManagedIdentity,
    this.outputBlobUri,
    this.parameters,
    this.protectedParameters,
    required this.resourceGroupName,
    this.runAsPassword,
    this.runAsUser,
    this.runCommandName,
    this.source,
    this.tags,
    this.timeoutInSeconds,
    this.treatFailureAsDeploymentFailure,
    required this.vmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncExecution': ?asyncExecution,
      'errorBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandManagedIdentity, Map<String, dynamic>>(errorBlobManagedIdentity, (value) => value.toMap()),
      'errorBlobUri': ?errorBlobUri,
      'location': ?location,
      'outputBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandManagedIdentity, Map<String, dynamic>>(outputBlobManagedIdentity, (value) => value.toMap()),
      'outputBlobUri': ?outputBlobUri,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RunCommandInputParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RunCommandInputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectedParameters': ?pulumi.Input.mapOptionalInputValue<List<RunCommandInputParameter>, List<Map<String, dynamic>>>(protectedParameters, (value) => pulumi.Input.encodeList<RunCommandInputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'runAsPassword': ?runAsPassword,
      'runAsUser': ?runAsUser,
      'runCommandName': ?runCommandName,
      'source': ?pulumi.Input.mapOptionalInputValue<VirtualMachineRunCommandScriptSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'timeoutInSeconds': ?timeoutInSeconds,
      'treatFailureAsDeploymentFailure': ?treatFailureAsDeploymentFailure,
      'vmName': vmName,
    };
  }

  factory VirtualMachineRunCommandByVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineRunCommandByVirtualMachineArgs(
      asyncExecution: (() { final guardedValue = map['asyncExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      errorBlobManagedIdentity: (() { final guardedValue = map['errorBlobManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RunCommandManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      errorBlobUri: (() { final guardedValue = map['errorBlobUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputBlobManagedIdentity: (() { final guardedValue = map['outputBlobManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RunCommandManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputBlobUri: (() { final guardedValue = map['outputBlobUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RunCommandInputParameter>(guardedValue, (value) => RunCommandInputParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protectedParameters: (() { final guardedValue = map['protectedParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RunCommandInputParameter>(guardedValue, (value) => RunCommandInputParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runAsPassword: (() { final guardedValue = map['runAsPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runAsUser: (() { final guardedValue = map['runAsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runCommandName: (() { final guardedValue = map['runCommandName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineRunCommandScriptSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      treatFailureAsDeploymentFailure: (() { final guardedValue = map['treatFailureAsDeploymentFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vmName: pulumi.Input.fromValue(map['vmName'] as String),
    );
  }
}

