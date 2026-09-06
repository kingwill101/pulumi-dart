// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getScriptExecution.
class GetScriptExecutionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Standard error output stream from the powershell execution
  final List<String>? errors;
  /// Error message if the script was able to run, but if the script itself had
  /// errors or powershell threw an exception
  final String? failureReason;
  /// Time the script execution was finished
  final String? finishedAt;
  /// Parameters that will be hidden/not visible to ARM, such as passwords and
  /// credentials
  final List<dynamic>? hiddenParameters;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Standard information out stream from the powershell execution
  final List<String>? information;
  /// The name of the resource
  final String? name;
  /// User-defined dictionary.
  final Map<String, dynamic>? namedOutputs;
  /// Standard output stream from the powershell execution
  final List<String>? output;
  /// Parameters the script will accept
  final List<dynamic>? parameters;
  /// The state of the script execution resource
  final String? provisioningState;
  /// Time to live for the resource. If not provided, will be available for 60 days
  final String? retention;
  /// A reference to the script cmdlet resource if user is running a AVS script
  final String? scriptCmdletId;
  /// Time the script execution was started
  final String? startedAt;
  /// Time the script execution was submitted
  final String? submittedAt;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Time limit for execution
  final String? timeout;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Standard warning out stream from the powershell execution
  final List<String>? warnings;

  /// Creates a new [GetScriptExecutionResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  const GetScriptExecutionResult({
    this.azureApiVersion,
    this.errors,
    this.failureReason,
    this.finishedAt,
    this.hiddenParameters,
    this.id,
    this.information,
    this.name,
    this.namedOutputs,
    this.output,
    this.parameters,
    this.provisioningState,
    this.retention,
    this.scriptCmdletId,
    this.startedAt,
    this.submittedAt,
    this.systemData,
    this.timeout,
    this.type,
    this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'errors': ?errors,
      'failureReason': ?failureReason,
      'finishedAt': ?finishedAt,
      'hiddenParameters': ?hiddenParameters,
      'id': ?id,
      'information': ?information,
      'name': ?name,
      'namedOutputs': ?namedOutputs,
      'output': ?output,
      'parameters': ?parameters,
      'provisioningState': ?provisioningState,
      'retention': ?retention,
      'scriptCmdletId': ?scriptCmdletId,
      'startedAt': ?startedAt,
      'submittedAt': ?submittedAt,
      'systemData': ?systemData?.toMap(),
      'timeout': ?timeout,
      'type': ?type,
      'warnings': ?warnings,
    };
  }

  factory GetScriptExecutionResult.fromMap(Map<String, dynamic> map) {
    return GetScriptExecutionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      finishedAt: (() { final guardedValue = map['finishedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hiddenParameters: (() { final guardedValue = map['hiddenParameters']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      information: (() { final guardedValue = map['information']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namedOutputs: (() { final guardedValue = map['namedOutputs']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptCmdletId: (() { final guardedValue = map['scriptCmdletId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startedAt: (() { final guardedValue = map['startedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      submittedAt: (() { final guardedValue = map['submittedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      warnings: (() { final guardedValue = map['warnings']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
