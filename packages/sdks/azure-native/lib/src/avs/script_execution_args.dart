// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pscredential_execution_parameter.dart';

/// {@template pulumi_avs_script_execution_args_doc}
/// The set of arguments for ScriptExecution.
/// {@endtemplate}
/// {@macro pulumi_avs_script_execution_args_doc}
class ScriptExecutionArgs {
  /// Error message if the script was able to run, but if the script itself had
  /// errors or powershell threw an exception
  final pulumi.Input<String>? failureReason;

  /// Parameters that will be hidden/not visible to ARM, such as passwords and
  /// credentials
  final pulumi.Input<List<PSCredentialExecutionParameter>>? hiddenParameters;

  /// User-defined dictionary.
  final pulumi.Input<Map<String, dynamic>>? namedOutputs;

  /// Standard output stream from the powershell execution
  final pulumi.Input<List<String>>? output;

  /// Parameters the script will accept
  final pulumi.Input<List<PSCredentialExecutionParameter>>? parameters;

  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Time to live for the resource. If not provided, will be available for 60 days
  final pulumi.Input<String>? retention;

  /// A reference to the script cmdlet resource if user is running a AVS script
  final pulumi.Input<String>? scriptCmdletId;

  /// Name of the script cmdlet.
  final pulumi.Input<String>? scriptExecutionName;

  /// Time limit for execution
  final pulumi.Input<String> timeout;

  /// Creates a new [ScriptExecutionArgs].
  /// [failureReason] Error message if the script was able to run, but if the script itself had
  /// [hiddenParameters] Parameters that will be hidden/not visible to ARM, such as passwords and
  /// [namedOutputs] User-defined dictionary.
  /// [output] Standard output stream from the powershell execution
  /// [parameters] Parameters the script will accept
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [retention] Time to live for the resource. If not provided, will be available for 60 days
  /// [scriptCmdletId] A reference to the script cmdlet resource if user is running a AVS script
  /// [scriptExecutionName] Name of the script cmdlet.
  /// [timeout] Time limit for execution
  ScriptExecutionArgs({
    this.failureReason,
    this.hiddenParameters,
    this.namedOutputs,
    this.output,
    this.parameters,
    required this.privateCloudName,
    required this.resourceGroupName,
    this.retention,
    this.scriptCmdletId,
    this.scriptExecutionName,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': ?failureReason,
      'hiddenParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<PSCredentialExecutionParameter>,
            List<Map<String, dynamic>>
          >(
            hiddenParameters,
            (value) =>
                pulumi.Input.encodeList<
                  PSCredentialExecutionParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'namedOutputs': ?namedOutputs,
      'output': ?output,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<PSCredentialExecutionParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  PSCredentialExecutionParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'retention': ?retention,
      'scriptCmdletId': ?scriptCmdletId,
      'scriptExecutionName': ?scriptExecutionName,
      'timeout': timeout,
    };
  }

  factory ScriptExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ScriptExecutionArgs(
      failureReason: (() {
        final guardedValue = map['failureReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hiddenParameters: (() {
        final guardedValue = map['hiddenParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PSCredentialExecutionParameter>(
            guardedValue,
            (value) => PSCredentialExecutionParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      namedOutputs: (() {
        final guardedValue = map['namedOutputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PSCredentialExecutionParameter>(
            guardedValue,
            (value) => PSCredentialExecutionParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      privateCloudName: pulumi.Input.fromValue(
        map['privateCloudName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      retention: (() {
        final guardedValue = map['retention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scriptCmdletId: (() {
        final guardedValue = map['scriptCmdletId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scriptExecutionName: (() {
        final guardedValue = map['scriptExecutionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
    );
  }
}
