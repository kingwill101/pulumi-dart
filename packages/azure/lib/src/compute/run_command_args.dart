// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_error_blob_managed_identity.dart';
import 'run_command_output_blob_managed_identity.dart';
import 'run_command_parameter.dart';
import 'run_command_protected_parameter.dart';
import 'run_command_source.dart';

/// {@template pulumi_compute_run_command_run_command_args_doc}
/// The set of arguments for RunCommand.
/// {@endtemplate}
/// {@macro pulumi_compute_run_command_run_command_args_doc}
class RunCommandArgs {
  /// An `error_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to errorBlobUri storage blob.
  final pulumi.Input<RunCommandErrorBlobManagedIdentity>? errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded.
  final pulumi.Input<String>? errorBlobUri;
  /// The Azure Region where the Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Virtual Machine Run Command. Changing this forces a new Virtual Machine Run Command to be created.
  final pulumi.Input<String>? name;
  /// An `output_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to outputBlobUri storage blob.
  final pulumi.Input<RunCommandOutputBlobManagedIdentity>? outputBlobManagedIdentity;
  /// Specifies the Azure storage blob where script output stream will be uploaded. It can be basic blob URI with SAS token.
  final pulumi.Input<String>? outputBlobUri;
  /// A list of `parameter` blocks as defined below. The parameters used by the script.
  final pulumi.Input<List<RunCommandParameter>>? parameters;
  /// A list of `protected_parameter` blocks as defined below. The protected parameters used by the script.
  final pulumi.Input<List<RunCommandProtectedParameter>>? protectedParameters;
  /// Specifies the user account password on the VM when executing the Virtual Machine Run Command.
  final pulumi.Input<String>? runAsPassword;
  /// Specifies the user account on the VM when executing the Virtual Machine Run Command.
  final pulumi.Input<String>? runAsUser;
  /// A `source` block as defined below. The source of the run command script.
  final pulumi.Input<RunCommandSource> source;
  /// A mapping of tags which should be assigned to the Virtual Machine Run Command.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Virtual Machine ID within which this Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [RunCommandArgs].
  /// [errorBlobManagedIdentity] An `error_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to errorBlobUri storage blob.
  /// [errorBlobUri] Specifies the Azure storage blob where script error stream will be uploaded.
  /// [location] The Azure Region where the Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  /// [name] Specifies the name of this Virtual Machine Run Command. Changing this forces a new Virtual Machine Run Command to be created.
  /// [outputBlobManagedIdentity] An `output_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to outputBlobUri storage blob.
  /// [outputBlobUri] Specifies the Azure storage blob where script output stream will be uploaded. It can be basic blob URI with SAS token.
  /// [parameters] A list of `parameter` blocks as defined below. The parameters used by the script.
  /// [protectedParameters] A list of `protected_parameter` blocks as defined below. The protected parameters used by the script.
  /// [runAsPassword] Specifies the user account password on the VM when executing the Virtual Machine Run Command.
  /// [runAsUser] Specifies the user account on the VM when executing the Virtual Machine Run Command.
  /// [source] A `source` block as defined below. The source of the run command script.
  /// [tags] A mapping of tags which should be assigned to the Virtual Machine Run Command.
  /// [virtualMachineId] Specifies the Virtual Machine ID within which this Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  RunCommandArgs({
    RunCommandErrorBlobManagedIdentity? errorBlobManagedIdentity,
    String? errorBlobUri,
    String? location,
    String? name,
    RunCommandOutputBlobManagedIdentity? outputBlobManagedIdentity,
    String? outputBlobUri,
    List<RunCommandParameter>? parameters,
    List<RunCommandProtectedParameter>? protectedParameters,
    String? runAsPassword,
    String? runAsUser,
    required RunCommandSource source,
    Map<String, String>? tags,
    required String virtualMachineId,
  }) :
      errorBlobManagedIdentity = pulumi.Input.asOptionalInput<RunCommandErrorBlobManagedIdentity>(errorBlobManagedIdentity),
      errorBlobUri = pulumi.Input.asOptionalInput<String>(errorBlobUri),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputBlobManagedIdentity = pulumi.Input.asOptionalInput<RunCommandOutputBlobManagedIdentity>(outputBlobManagedIdentity),
      outputBlobUri = pulumi.Input.asOptionalInput<String>(outputBlobUri),
      parameters = pulumi.Input.asOptionalInput<List<RunCommandParameter>>(parameters),
      protectedParameters = pulumi.Input.asOptionalInput<List<RunCommandProtectedParameter>>(protectedParameters),
      runAsPassword = pulumi.Input.asOptionalInput<String>(runAsPassword),
      runAsUser = pulumi.Input.asOptionalInput<String>(runAsUser),
      source = pulumi.Input.asInput<RunCommandSource>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMachineId = pulumi.Input.asInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandErrorBlobManagedIdentity, Map<String, dynamic>>(errorBlobManagedIdentity, (value) => value.toMap()),
      'errorBlobUri': ?errorBlobUri,
      'location': ?location,
      'name': ?name,
      'outputBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandOutputBlobManagedIdentity, Map<String, dynamic>>(outputBlobManagedIdentity, (value) => value.toMap()),
      'outputBlobUri': ?outputBlobUri,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RunCommandParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RunCommandParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectedParameters': ?pulumi.Input.mapOptionalInputValue<List<RunCommandProtectedParameter>, List<Map<String, dynamic>>>(protectedParameters, (value) => pulumi.Input.encodeList<RunCommandProtectedParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runAsPassword': ?runAsPassword,
      'runAsUser': ?runAsUser,
      'source': pulumi.Input.mapInputValue<RunCommandSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory RunCommandArgs.fromMap(Map<String, dynamic> map) {
    return RunCommandArgs(
      errorBlobManagedIdentity: map['errorBlobManagedIdentity'] == null ? null : RunCommandErrorBlobManagedIdentity.fromMap((map['errorBlobManagedIdentity'] as Map).cast<String, dynamic>()),
      errorBlobUri: map['errorBlobUri'] == null ? null : map['errorBlobUri'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      outputBlobManagedIdentity: map['outputBlobManagedIdentity'] == null ? null : RunCommandOutputBlobManagedIdentity.fromMap((map['outputBlobManagedIdentity'] as Map).cast<String, dynamic>()),
      outputBlobUri: map['outputBlobUri'] == null ? null : map['outputBlobUri'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<RunCommandParameter>(map['parameters'], (value) => RunCommandParameter.fromMap((value as Map).cast<String, dynamic>())),
      protectedParameters: map['protectedParameters'] == null ? null : pulumi.Input.decodeList<RunCommandProtectedParameter>(map['protectedParameters'], (value) => RunCommandProtectedParameter.fromMap((value as Map).cast<String, dynamic>())),
      runAsPassword: map['runAsPassword'] == null ? null : map['runAsPassword'] as String,
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser'] as String,
      source: RunCommandSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualMachineId: map['virtualMachineId'] as String,
    );
  }
}

