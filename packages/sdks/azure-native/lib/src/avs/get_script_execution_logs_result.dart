// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pscredential_execution_parameter_response.dart';
import 'system_data_response.dart';

/// Result data returned by getScriptExecutionLogs.
class GetScriptExecutionLogsResult {
  /// Standard error output stream from the powershell execution
  final List<String> errors;
  /// Error message if the script was able to run, but if the script itself had
  /// errors or powershell threw an exception
  final String? failureReason;
  /// Time the script execution was finished
  final String finishedAt;
  /// Parameters that will be hidden/not visible to ARM, such as passwords and
  /// credentials
  final List<PSCredentialExecutionParameterResponse>? hiddenParameters;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Standard information out stream from the powershell execution
  final List<String> information;
  /// The name of the resource
  final String name;
  /// User-defined dictionary.
  final Map<String, dynamic>? namedOutputs;
  /// Standard output stream from the powershell execution
  final List<String>? output;
  /// Parameters the script will accept
  final List<PSCredentialExecutionParameterResponse>? parameters;
  /// The state of the script execution resource
  final String provisioningState;
  /// Time to live for the resource. If not provided, will be available for 60 days
  final String? retention;
  /// A reference to the script cmdlet resource if user is running a AVS script
  final String? scriptCmdletId;
  /// Time the script execution was started
  final String startedAt;
  /// Time the script execution was submitted
  final String submittedAt;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Time limit for execution
  final String timeout;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Standard warning out stream from the powershell execution
  final List<String> warnings;

  /// Creates a new [GetScriptExecutionLogsResult].
  /// [errors] Standard error output stream from the powershell execution
  /// [failureReason] Error message if the script was able to run, but if the script itself had
  /// [finishedAt] Time the script execution was finished
  /// [hiddenParameters] Parameters that will be hidden/not visible to ARM, such as passwords and
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [information] Standard information out stream from the powershell execution
  /// [name] The name of the resource
  /// [namedOutputs] User-defined dictionary.
  /// [output] Standard output stream from the powershell execution
  /// [parameters] Parameters the script will accept
  /// [provisioningState] The state of the script execution resource
  /// [retention] Time to live for the resource. If not provided, will be available for 60 days
  /// [scriptCmdletId] A reference to the script cmdlet resource if user is running a AVS script
  /// [startedAt] Time the script execution was started
  /// [submittedAt] Time the script execution was submitted
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeout] Time limit for execution
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [warnings] Standard warning out stream from the powershell execution
  GetScriptExecutionLogsResult({
    required this.errors,
    this.failureReason,
    required this.finishedAt,
    this.hiddenParameters,
    required this.id,
    required this.information,
    required this.name,
    this.namedOutputs,
    this.output,
    this.parameters,
    required this.provisioningState,
    this.retention,
    this.scriptCmdletId,
    required this.startedAt,
    required this.submittedAt,
    required this.systemData,
    required this.timeout,
    required this.type,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': errors,
      'failureReason': ?failureReason,
      'finishedAt': finishedAt,
      'hiddenParameters': ?(() { final guardedValue = hiddenParameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<PSCredentialExecutionParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'information': information,
      'name': name,
      'namedOutputs': ?namedOutputs,
      'output': ?output,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<PSCredentialExecutionParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'retention': ?retention,
      'scriptCmdletId': ?scriptCmdletId,
      'startedAt': startedAt,
      'submittedAt': submittedAt,
      'systemData': systemData.toMap(),
      'timeout': timeout,
      'type': type,
      'warnings': warnings,
    };
  }

  factory GetScriptExecutionLogsResult.fromMap(Map<String, dynamic> map) {
    return GetScriptExecutionLogsResult(
      errors: (map['errors'] as List).cast<String>(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      finishedAt: map['finishedAt'] as String,
      hiddenParameters: (() { final guardedValue = map['hiddenParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PSCredentialExecutionParameterResponse>(guardedValue, (value) => PSCredentialExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      information: (map['information'] as List).cast<String>(),
      name: map['name'] as String,
      namedOutputs: (() { final guardedValue = map['namedOutputs']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PSCredentialExecutionParameterResponse>(guardedValue, (value) => PSCredentialExecutionParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptCmdletId: (() { final guardedValue = map['scriptCmdletId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startedAt: map['startedAt'] as String,
      submittedAt: map['submittedAt'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
      type: map['type'] as String,
      warnings: (map['warnings'] as List).cast<String>(),
    );
  }
}

