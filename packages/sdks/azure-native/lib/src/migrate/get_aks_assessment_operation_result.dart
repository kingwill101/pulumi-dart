// ignore_for_file: unused_element, unnecessary_cast

import 'aksassessment_details_response.dart';
import 'aksassessment_settings_response.dart';
import 'assessment_scope_parameters_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAksAssessmentOperation.
class GetAksAssessmentOperationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets AKS Assessment Details.
  final AKSAssessmentDetailsResponse? details;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String? eTag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Gets the provisioning state.
  final String? provisioningState;
  /// Gets or sets scope parameters to identify inventory items for assessment.
  final AssessmentScopeParametersResponse? scope;
  /// Gets or sets AKS Assessment Settings.
  final AKSAssessmentSettingsResponse? settings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAksAssessmentOperationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [details] Gets AKS Assessment Details.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Gets the provisioning state.
  /// [scope] Gets or sets scope parameters to identify inventory items for assessment.
  /// [settings] Gets or sets AKS Assessment Settings.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAksAssessmentOperationResult({
    this.azureApiVersion,
    this.details,
    this.eTag,
    this.id,
    this.name,
    this.provisioningState,
    this.scope,
    this.settings,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'details': ?details?.toMap(),
      'eTag': ?eTag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'scope': ?scope?.toMap(),
      'settings': ?settings?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAksAssessmentOperationResult.fromMap(Map<String, dynamic> map) {
    return GetAksAssessmentOperationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return AKSAssessmentDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return AssessmentScopeParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return AKSAssessmentSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
