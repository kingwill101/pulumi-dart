// ignore_for_file: unused_element, unnecessary_cast

import 'run_command_managed_identity.dart';

/// Describes the script sources for run command. Use only one of script, scriptUri, commandId.
class MachineRunCommandScriptSource {
  /// Specifies the commandId of predefined built-in script.
  final String? commandId;
  /// Specifies the script content to be executed on the machine.
  final String? script;
  /// Specifies the script download location. It can be either SAS URI of an Azure storage blob with read access or public URI.
  final String? scriptUri;
  /// User-assigned managed identity that has access to scriptUri in case of Azure storage blob. Use an empty object in case of system-assigned identity. Make sure the Azure storage blob exists, and managed identity has been given access to blob's container with 'Storage Blob Data Reader' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged.
  final RunCommandManagedIdentity? scriptUriManagedIdentity;

  /// Creates a new [MachineRunCommandScriptSource].
  /// [commandId] Specifies the commandId of predefined built-in script.
  /// [script] Specifies the script content to be executed on the machine.
  /// [scriptUri] Specifies the script download location. It can be either SAS URI of an Azure storage blob with read access or public URI.
  /// [scriptUriManagedIdentity] User-assigned managed identity that has access to scriptUri in case of Azure storage blob. Use an empty object in case of system-assigned identity. Make sure the Azure storage blob exists, and managed identity has been given access to blob's container with 'Storage Blob Data Reader' role assignment. In case of user-assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged.
  MachineRunCommandScriptSource({
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
      'scriptUriManagedIdentity': ?scriptUriManagedIdentity == null ? null : scriptUriManagedIdentity!.toMap(),
    };
  }

  factory MachineRunCommandScriptSource.fromMap(Map<String, dynamic> map) {
    return MachineRunCommandScriptSource(
      commandId: map['commandId'] == null ? null : map['commandId'] as String,
      script: map['script'] == null ? null : map['script'] as String,
      scriptUri: map['scriptUri'] == null ? null : map['scriptUri'] as String,
      scriptUriManagedIdentity: map['scriptUriManagedIdentity'] == null ? null : RunCommandManagedIdentity.fromMap((map['scriptUriManagedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

