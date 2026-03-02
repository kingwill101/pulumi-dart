// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_managed_identity_response.dart';

/// Describes the script sources for run command. Use only one of script, scriptUri, commandId.
class MachineRunCommandScriptSourceResponse {
  /// Specifies the commandId of predefined built-in script.
  final pulumi.Input<String>? commandId;
  /// Specifies the script content to be executed on the machine.
  final pulumi.Input<String>? script;
  /// Specifies the script download location. It can be either SAS URI of an Azure storage blob with read access or public URI.
  final pulumi.Input<String>? scriptUri;
  /// User-assigned managed identity that has access to scriptUri in case of Azure storage blob. Use an empty object in case of system-assigned identity. Make sure the Azure storage blob exists, and managed identity has been given access to blob's container with 'Storage Blob Data Reader' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged.
  final pulumi.Input<RunCommandManagedIdentityResponse>? scriptUriManagedIdentity;

  /// Creates a new [MachineRunCommandScriptSourceResponse].
  /// [commandId] Specifies the commandId of predefined built-in script.
  /// [script] Specifies the script content to be executed on the machine.
  /// [scriptUri] Specifies the script download location. It can be either SAS URI of an Azure storage blob with read access or public URI.
  /// [scriptUriManagedIdentity] User-assigned managed identity that has access to scriptUri in case of Azure storage blob. Use an empty object in case of system-assigned identity. Make sure the Azure storage blob exists, and managed identity has been given access to blob's container with 'Storage Blob Data Reader' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged.
  MachineRunCommandScriptSourceResponse({
    this.commandId,
    this.script,
    this.scriptUri,
    this.scriptUriManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandId': ?commandId,
      'script': ?script,
      'scriptUri': ?scriptUri,
      'scriptUriManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandManagedIdentityResponse, Map<String, dynamic>>(scriptUriManagedIdentity, (value) => value.toMap()),
    };
  }

  factory MachineRunCommandScriptSourceResponse.fromMap(Map<String, dynamic> map) {
    return MachineRunCommandScriptSourceResponse(
      commandId: map['commandId'] == null ? null : (map['commandId'] as String).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
      scriptUri: map['scriptUri'] == null ? null : (map['scriptUri'] as String).input(),
      scriptUriManagedIdentity: map['scriptUriManagedIdentity'] == null ? null : (RunCommandManagedIdentityResponse.fromMap((map['scriptUriManagedIdentity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

