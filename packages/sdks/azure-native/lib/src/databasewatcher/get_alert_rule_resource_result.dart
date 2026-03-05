// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAlertRuleResource.
class GetAlertRuleResourceResult {
  /// The resource ID of the alert rule resource.
  final String alertRuleResourceId;
  /// The template ID associated with alert rule resource.
  final String alertRuleTemplateId;
  /// The alert rule template version.
  final String alertRuleTemplateVersion;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The properties with which the alert rule resource was created.
  final String createdWithProperties;
  /// The creation time of the alert rule resource.
  final String creationTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state of the alert rule resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAlertRuleResourceResult].
  /// [alertRuleResourceId] The resource ID of the alert rule resource.
  /// [alertRuleTemplateId] The template ID associated with alert rule resource.
  /// [alertRuleTemplateVersion] The alert rule template version.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdWithProperties] The properties with which the alert rule resource was created.
  /// [creationTime] The creation time of the alert rule resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the alert rule resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAlertRuleResourceResult({
    required this.alertRuleResourceId,
    required this.alertRuleTemplateId,
    required this.alertRuleTemplateVersion,
    required this.azureApiVersion,
    required this.createdWithProperties,
    required this.creationTime,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleResourceId': alertRuleResourceId,
      'alertRuleTemplateId': alertRuleTemplateId,
      'alertRuleTemplateVersion': alertRuleTemplateVersion,
      'azureApiVersion': azureApiVersion,
      'createdWithProperties': createdWithProperties,
      'creationTime': creationTime,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAlertRuleResourceResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleResourceResult(
      alertRuleResourceId: map['alertRuleResourceId'] as String,
      alertRuleTemplateId: map['alertRuleTemplateId'] as String,
      alertRuleTemplateVersion: map['alertRuleTemplateVersion'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      createdWithProperties: map['createdWithProperties'] as String,
      creationTime: map['creationTime'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

