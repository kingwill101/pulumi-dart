// ignore_for_file: unused_element, unnecessary_cast

import 'runbook_association_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWebhook.
class GetWebhookResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets or sets the expiry time.
  final String? expiryTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets or sets the value of the enabled flag of the webhook.
  final bool? isEnabled;
  /// Gets or sets the last invoked time.
  final String? lastInvokedTime;
  /// Details of the user who last modified the Webhook
  final String? lastModifiedBy;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Gets or sets the parameters of the job that is created when the webhook calls the runbook it is associated with.
  final Map<String, String>? parameters;
  /// Gets or sets the name of the hybrid worker group the webhook job will run on.
  final String? runOn;
  /// Gets or sets the runbook the webhook is associated with.
  final RunbookAssociationPropertyResponse? runbook;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
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
  GetWebhookResult({
    required this.azureApiVersion,
    this.creationTime,
    this.description,
    this.expiryTime,
    required this.id,
    this.isEnabled,
    this.lastInvokedTime,
    this.lastModifiedBy,
    this.lastModifiedTime,
    required this.name,
    this.parameters,
    this.runOn,
    this.runbook,
    required this.systemData,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'id': id,
      'isEnabled': ?isEnabled,
      'lastInvokedTime': ?lastInvokedTime,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'parameters': ?parameters,
      'runOn': ?runOn,
      'runbook': ?runbook == null ? null : runbook!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'uri': ?uri,
    };
  }

  factory GetWebhookResult.fromMap(Map<String, dynamic> map) {
    return GetWebhookResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] == null ? null : map['creationTime']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime']! as String,
      id: map['id'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled']! as bool,
      lastInvokedTime: map['lastInvokedTime'] == null ? null : map['lastInvokedTime']! as String,
      lastModifiedBy: map['lastModifiedBy'] == null ? null : map['lastModifiedBy']! as String,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime']! as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters']! as Map).cast<String, String>(),
      runOn: map['runOn'] == null ? null : map['runOn']! as String,
      runbook: map['runbook'] == null ? null : RunbookAssociationPropertyResponse.fromMap((map['runbook']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      uri: map['uri'] == null ? null : map['uri']! as String,
    );
  }
}

