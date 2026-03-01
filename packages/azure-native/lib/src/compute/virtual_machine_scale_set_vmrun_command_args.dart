// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_input_parameter.dart';
import 'run_command_managed_identity.dart';
import 'virtual_machine_run_command_script_source.dart';

/// {@template pulumi_compute_virtual_machine_scale_set_vmrun_command_args_doc}
/// The set of arguments for VirtualMachineScaleSetVMRunCommand.
/// {@endtemplate}
/// {@macro pulumi_compute_virtual_machine_scale_set_vmrun_command_args_doc}
class VirtualMachineScaleSetVMRunCommandArgs {
  /// Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.
  final pulumi.Input<bool>? asyncExecution;
  /// User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  final pulumi.Input<RunCommandManagedIdentity>? errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  final pulumi.Input<String>? errorBlobUri;
  /// The name of the VirtualMachineScaleSetVM
  final pulumi.Input<String> instanceId;
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
  /// The name of the VirtualMachineScaleSet
  final pulumi.Input<String> vmScaleSetName;

  /// Creates a new [VirtualMachineScaleSetVMRunCommandArgs].
  /// [asyncExecution] Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete.
  /// [errorBlobManagedIdentity] User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  /// [errorBlobUri] Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  /// [instanceId] The name of the VirtualMachineScaleSetVM
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
  /// [vmScaleSetName] The name of the VirtualMachineScaleSet
  VirtualMachineScaleSetVMRunCommandArgs({
    bool? asyncExecution,
    RunCommandManagedIdentity? errorBlobManagedIdentity,
    String? errorBlobUri,
    required String instanceId,
    String? location,
    RunCommandManagedIdentity? outputBlobManagedIdentity,
    String? outputBlobUri,
    List<RunCommandInputParameter>? parameters,
    List<RunCommandInputParameter>? protectedParameters,
    required String resourceGroupName,
    String? runAsPassword,
    String? runAsUser,
    String? runCommandName,
    VirtualMachineRunCommandScriptSource? source,
    Map<String, String>? tags,
    int? timeoutInSeconds,
    bool? treatFailureAsDeploymentFailure,
    required String vmScaleSetName,
  }) :
      asyncExecution = pulumi.Input.asOptionalInput<bool>(asyncExecution),
      errorBlobManagedIdentity = pulumi.Input.asOptionalInput<RunCommandManagedIdentity>(errorBlobManagedIdentity),
      errorBlobUri = pulumi.Input.asOptionalInput<String>(errorBlobUri),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      outputBlobManagedIdentity = pulumi.Input.asOptionalInput<RunCommandManagedIdentity>(outputBlobManagedIdentity),
      outputBlobUri = pulumi.Input.asOptionalInput<String>(outputBlobUri),
      parameters = pulumi.Input.asOptionalInput<List<RunCommandInputParameter>>(parameters),
      protectedParameters = pulumi.Input.asOptionalInput<List<RunCommandInputParameter>>(protectedParameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runAsPassword = pulumi.Input.asOptionalInput<String>(runAsPassword),
      runAsUser = pulumi.Input.asOptionalInput<String>(runAsUser),
      runCommandName = pulumi.Input.asOptionalInput<String>(runCommandName),
      source = pulumi.Input.asOptionalInput<VirtualMachineRunCommandScriptSource>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeoutInSeconds = pulumi.Input.asOptionalInput<int>(timeoutInSeconds),
      treatFailureAsDeploymentFailure = pulumi.Input.asOptionalInput<bool>(treatFailureAsDeploymentFailure),
      vmScaleSetName = pulumi.Input.asInput<String>(vmScaleSetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncExecution': ?asyncExecution,
      'errorBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandManagedIdentity, Map<String, dynamic>>(errorBlobManagedIdentity, (value) => value.toMap()),
      'errorBlobUri': ?errorBlobUri,
      'instanceId': instanceId,
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
      'vmScaleSetName': vmScaleSetName,
    };
  }

  factory VirtualMachineScaleSetVMRunCommandArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetVMRunCommandArgs(
      asyncExecution: map['asyncExecution'] == null ? null : map['asyncExecution'] as bool,
      errorBlobManagedIdentity: map['errorBlobManagedIdentity'] == null ? null : RunCommandManagedIdentity.fromMap((map['errorBlobManagedIdentity'] as Map).cast<String, dynamic>()),
      errorBlobUri: map['errorBlobUri'] == null ? null : map['errorBlobUri'] as String,
      instanceId: map['instanceId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      outputBlobManagedIdentity: map['outputBlobManagedIdentity'] == null ? null : RunCommandManagedIdentity.fromMap((map['outputBlobManagedIdentity'] as Map).cast<String, dynamic>()),
      outputBlobUri: map['outputBlobUri'] == null ? null : map['outputBlobUri'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<RunCommandInputParameter>(map['parameters'], (value) => RunCommandInputParameter.fromMap((value as Map).cast<String, dynamic>())),
      protectedParameters: map['protectedParameters'] == null ? null : pulumi.Input.decodeList<RunCommandInputParameter>(map['protectedParameters'], (value) => RunCommandInputParameter.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      runAsPassword: map['runAsPassword'] == null ? null : map['runAsPassword'] as String,
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser'] as String,
      runCommandName: map['runCommandName'] == null ? null : map['runCommandName'] as String,
      source: map['source'] == null ? null : VirtualMachineRunCommandScriptSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
      treatFailureAsDeploymentFailure: map['treatFailureAsDeploymentFailure'] == null ? null : map['treatFailureAsDeploymentFailure'] as bool,
      vmScaleSetName: map['vmScaleSetName'] as String,
    );
  }
}

