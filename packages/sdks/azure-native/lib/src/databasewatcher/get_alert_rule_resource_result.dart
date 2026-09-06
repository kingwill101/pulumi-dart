// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAlertRuleResource.
class GetAlertRuleResourceResult {
  /// The resource ID of the alert rule resource.
  final String? alertRuleResourceId;
  /// The template ID associated with alert rule resource.
  final String? alertRuleTemplateId;
  /// The alert rule template version.
  final String? alertRuleTemplateVersion;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The properties with which the alert rule resource was created.
  final String? createdWithProperties;
  /// The creation time of the alert rule resource.
  final String? creationTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the alert rule resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetAlertRuleResourceResult({
    this.alertRuleResourceId,
    this.alertRuleTemplateId,
    this.alertRuleTemplateVersion,
    this.azureApiVersion,
    this.createdWithProperties,
    this.creationTime,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleResourceId': ?alertRuleResourceId,
      'alertRuleTemplateId': ?alertRuleTemplateId,
      'alertRuleTemplateVersion': ?alertRuleTemplateVersion,
      'azureApiVersion': ?azureApiVersion,
      'createdWithProperties': ?createdWithProperties,
      'creationTime': ?creationTime,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAlertRuleResourceResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleResourceResult(
      alertRuleResourceId: (() { final guardedValue = map['alertRuleResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      alertRuleTemplateId: (() { final guardedValue = map['alertRuleTemplateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      alertRuleTemplateVersion: (() { final guardedValue = map['alertRuleTemplateVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdWithProperties: (() { final guardedValue = map['createdWithProperties']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
