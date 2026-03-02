// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_run_command_script_source.dart';
import 'run_command_input_parameter.dart';
import 'run_command_managed_identity.dart';

/// {@template pulumi_hybridcompute_machine_run_command_args_doc}
/// The set of arguments for MachineRunCommand.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_machine_run_command_args_doc}
class MachineRunCommandArgs {
  /// Optional. If set to true, provisioning will complete as soon as script starts and will not wait for script to complete.
  final pulumi.Input<bool>? asyncExecution;
  /// User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  final pulumi.Input<RunCommandManagedIdentity>? errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  final pulumi.Input<String>? errorBlobUri;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the hybrid machine.
  final pulumi.Input<String> machineName;
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
  /// Specifies the user account password on the machine when executing the run command.
  final pulumi.Input<String>? runAsPassword;
  /// Specifies the user account on the machine when executing the run command.
  final pulumi.Input<String>? runAsUser;
  /// The name of the run command.
  final pulumi.Input<String>? runCommandName;
  /// The source of the run command script.
  final pulumi.Input<MachineRunCommandScriptSource>? source;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The timeout in seconds to execute the run command.
  final pulumi.Input<int>? timeoutInSeconds;

  /// Creates a new [MachineRunCommandArgs].
  /// [asyncExecution] Optional. If set to true, provisioning will complete as soon as script starts and will not wait for script to complete.
  /// [errorBlobManagedIdentity] User-assigned managed identity that has access to errorBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  /// [errorBlobUri] Specifies the Azure storage blob where script error stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer errorBlobManagedIdentity parameter.
  /// [location] The geo-location where the resource lives
  /// [machineName] The name of the hybrid machine.
  /// [outputBlobManagedIdentity] User-assigned managed identity that has access to outputBlobUri storage blob. Use an empty object in case of system-assigned identity. Make sure managed identity has been given access to blob's container with 'Storage Blob Data Contributor' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged
  /// [outputBlobUri] Specifies the Azure storage blob where script output stream will be uploaded. Use a SAS URI with read, append, create, write access OR use managed identity to provide the VM access to the blob. Refer outputBlobManagedIdentity parameter.
  /// [parameters] The parameters used by the script.
  /// [protectedParameters] The parameters used by the script.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runAsPassword] Specifies the user account password on the machine when executing the run command.
  /// [runAsUser] Specifies the user account on the machine when executing the run command.
  /// [runCommandName] The name of the run command.
  /// [source] The source of the run command script.
  /// [tags] Resource tags.
  /// [timeoutInSeconds] The timeout in seconds to execute the run command.
  MachineRunCommandArgs({
    this.asyncExecution,
    this.errorBlobManagedIdentity,
    this.errorBlobUri,
    this.location,
    required this.machineName,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncExecution': ?asyncExecution,
      'errorBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandManagedIdentity, Map<String, dynamic>>(errorBlobManagedIdentity, (value) => value.toMap()),
      'errorBlobUri': ?errorBlobUri,
      'location': ?location,
      'machineName': machineName,
      'outputBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandManagedIdentity, Map<String, dynamic>>(outputBlobManagedIdentity, (value) => value.toMap()),
      'outputBlobUri': ?outputBlobUri,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RunCommandInputParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RunCommandInputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectedParameters': ?pulumi.Input.mapOptionalInputValue<List<RunCommandInputParameter>, List<Map<String, dynamic>>>(protectedParameters, (value) => pulumi.Input.encodeList<RunCommandInputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'runAsPassword': ?runAsPassword,
      'runAsUser': ?runAsUser,
      'runCommandName': ?runCommandName,
      'source': ?pulumi.Input.mapOptionalInputValue<MachineRunCommandScriptSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory MachineRunCommandArgs.fromMap(Map<String, dynamic> map) {
    return MachineRunCommandArgs(
      asyncExecution: map['asyncExecution'] == null ? null : (map['asyncExecution']! as bool).input(),
      errorBlobManagedIdentity: map['errorBlobManagedIdentity'] == null ? null : (RunCommandManagedIdentity.fromMap((map['errorBlobManagedIdentity']! as Map).cast<String, dynamic>())).input(),
      errorBlobUri: map['errorBlobUri'] == null ? null : (map['errorBlobUri']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      machineName: (map['machineName'] as String).input(),
      outputBlobManagedIdentity: map['outputBlobManagedIdentity'] == null ? null : (RunCommandManagedIdentity.fromMap((map['outputBlobManagedIdentity']! as Map).cast<String, dynamic>())).input(),
      outputBlobUri: map['outputBlobUri'] == null ? null : (map['outputBlobUri']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<RunCommandInputParameter>(map['parameters']!, (value) => RunCommandInputParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectedParameters: map['protectedParameters'] == null ? null : (pulumi.Input.decodeList<RunCommandInputParameter>(map['protectedParameters']!, (value) => RunCommandInputParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runAsPassword: map['runAsPassword'] == null ? null : (map['runAsPassword']! as String).input(),
      runAsUser: map['runAsUser'] == null ? null : (map['runAsUser']! as String).input(),
      runCommandName: map['runCommandName'] == null ? null : (map['runCommandName']! as String).input(),
      source: map['source'] == null ? null : (MachineRunCommandScriptSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds']! as int).input(),
    );
  }
}

