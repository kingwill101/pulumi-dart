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
    String? failureReason,
    List<PSCredentialExecutionParameter>? hiddenParameters,
    Map<String, dynamic>? namedOutputs,
    List<String>? output,
    List<PSCredentialExecutionParameter>? parameters,
    required String privateCloudName,
    required String resourceGroupName,
    String? retention,
    String? scriptCmdletId,
    String? scriptExecutionName,
    required String timeout,
  }) :
      failureReason = pulumi.Input.asOptionalInput<String>(failureReason),
      hiddenParameters = pulumi.Input.asOptionalInput<List<PSCredentialExecutionParameter>>(hiddenParameters),
      namedOutputs = pulumi.Input.asOptionalInput<Map<String, dynamic>>(namedOutputs),
      output = pulumi.Input.asOptionalInput<List<String>>(output),
      parameters = pulumi.Input.asOptionalInput<List<PSCredentialExecutionParameter>>(parameters),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retention = pulumi.Input.asOptionalInput<String>(retention),
      scriptCmdletId = pulumi.Input.asOptionalInput<String>(scriptCmdletId),
      scriptExecutionName = pulumi.Input.asOptionalInput<String>(scriptExecutionName),
      timeout = pulumi.Input.asInput<String>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': ?failureReason,
      'hiddenParameters': ?pulumi.Input.mapOptionalInputValue<List<PSCredentialExecutionParameter>, List<Map<String, dynamic>>>(hiddenParameters, (value) => pulumi.Input.encodeList<PSCredentialExecutionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namedOutputs': ?namedOutputs,
      'output': ?output,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<PSCredentialExecutionParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<PSCredentialExecutionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      failureReason: map['failureReason'] == null ? null : map['failureReason'] as String,
      hiddenParameters: map['hiddenParameters'] == null ? null : pulumi.Input.decodeList<PSCredentialExecutionParameter>(map['hiddenParameters'], (value) => PSCredentialExecutionParameter.fromMap((value as Map).cast<String, dynamic>())),
      namedOutputs: map['namedOutputs'] == null ? null : (map['namedOutputs'] as Map).cast<String, dynamic>(),
      output: map['output'] == null ? null : (map['output'] as List).cast<String>(),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<PSCredentialExecutionParameter>(map['parameters'], (value) => PSCredentialExecutionParameter.fromMap((value as Map).cast<String, dynamic>())),
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      retention: map['retention'] == null ? null : map['retention'] as String,
      scriptCmdletId: map['scriptCmdletId'] == null ? null : map['scriptCmdletId'] as String,
      scriptExecutionName: map['scriptExecutionName'] == null ? null : map['scriptExecutionName'] as String,
      timeout: map['timeout'] as String,
    );
  }
}

