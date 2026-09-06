// ignore_for_file: unused_element, unnecessary_cast

import 'runbook_association_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWebhook.
class GetWebhookResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets or sets the expiry time.
  final String? expiryTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Gets or sets the value of the enabled flag of the webhook.
  final bool? isEnabled;
  /// Gets or sets the last invoked time.
  final String? lastInvokedTime;
  /// Details of the user who last modified the Webhook
  final String? lastModifiedBy;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String? name;
  /// Gets or sets the parameters of the job that is created when the webhook calls the runbook it is associated with.
  final Map<String, String>? parameters;
  /// Gets or sets the name of the hybrid worker group the webhook job will run on.
  final String? runOn;
  /// Gets or sets the runbook the webhook is associated with.
  final RunbookAssociationPropertyResponse? runbook;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Gets or sets the webhook uri.
  final String? uri;

  /// Creates a new [GetWebhookResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [expiryTime] Gets or sets the expiry time.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isEnabled] Gets or sets the value of the enabled flag of the webhook.
  /// [lastInvokedTime] Gets or sets the last invoked time.
  /// [lastModifiedBy] Details of the user who last modified the Webhook
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] The name of the resource
  /// [parameters] Gets or sets the parameters of the job that is created when the webhook calls the runbook it is associated with.
  /// [runOn] Gets or sets the name of the hybrid worker group the webhook job will run on.
  /// [runbook] Gets or sets the runbook the webhook is associated with.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uri] Gets or sets the webhook uri.
  const GetWebhookResult({
    this.azureApiVersion,
    this.creationTime,
    this.description,
    this.expiryTime,
    this.id,
    this.isEnabled,
    this.lastInvokedTime,
    this.lastModifiedBy,
    this.lastModifiedTime,
    this.name,
    this.parameters,
    this.runOn,
    this.runbook,
    this.systemData,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'id': ?id,
      'isEnabled': ?isEnabled,
      'lastInvokedTime': ?lastInvokedTime,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'parameters': ?parameters,
      'runOn': ?runOn,
      'runbook': ?runbook?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory GetWebhookResult.fromMap(Map<String, dynamic> map) {
    return GetWebhookResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastInvokedTime: (() { final guardedValue = map['lastInvokedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      runOn: (() { final guardedValue = map['runOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runbook: (() { final guardedValue = map['runbook']; if (guardedValue == null) return null; return RunbookAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
