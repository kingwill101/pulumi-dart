// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getScript.
class GetScriptResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Flag that indicates whether to continue if one of the command fails.
  final bool? continueOnErrors;
  /// A unique string. If changed the script will be applied again.
  final String? forceUpdateTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Indicates if the permissions for the script caller are kept following completion of the script.
  final String? principalPermissionsAction;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// Differentiates between the type of script commands included - Database or Cluster. The default is Database.
  final String? scriptLevel;
  /// The url to the KQL script blob file. Must not be used together with scriptContent property
  final String? scriptUrl;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetScriptResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [continueOnErrors] Flag that indicates whether to continue if one of the command fails.
  /// [forceUpdateTag] A unique string. If changed the script will be applied again.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [principalPermissionsAction] Indicates if the permissions for the script caller are kept following completion of the script.
  /// [provisioningState] The provisioned state of the resource.
  /// [scriptLevel] Differentiates between the type of script commands included - Database or Cluster. The default is Database.
  /// [scriptUrl] The url to the KQL script blob file. Must not be used together with scriptContent property
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetScriptResult({
    required this.azureApiVersion,
    this.continueOnErrors,
    this.forceUpdateTag,
    required this.id,
    required this.name,
    this.principalPermissionsAction,
    required this.provisioningState,
    this.scriptLevel,
    this.scriptUrl,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'continueOnErrors': ?continueOnErrors,
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'name': name,
      'principalPermissionsAction': ?principalPermissionsAction,
      'provisioningState': provisioningState,
      'scriptLevel': ?scriptLevel,
      'scriptUrl': ?scriptUrl,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetScriptResult.fromMap(Map<String, dynamic> map) {
    return GetScriptResult(
      azureApiVersion: map['azureApiVersion'] as String,
      continueOnErrors: (() { final guardedValue = map['continueOnErrors']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      principalPermissionsAction: (() { final guardedValue = map['principalPermissionsAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      scriptLevel: (() { final guardedValue = map['scriptLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptUrl: (() { final guardedValue = map['scriptUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
