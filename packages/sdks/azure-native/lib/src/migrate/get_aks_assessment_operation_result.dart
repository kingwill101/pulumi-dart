// ignore_for_file: unused_element, unnecessary_cast

import 'aksassessment_details_response.dart';
import 'aksassessment_settings_response.dart';
import 'assessment_scope_parameters_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAksAssessmentOperation.
class GetAksAssessmentOperationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets AKS Assessment Details.
  final AKSAssessmentDetailsResponse details;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String eTag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Gets the provisioning state.
  final String provisioningState;
  /// Gets or sets scope parameters to identify inventory items for assessment.
  final AssessmentScopeParametersResponse? scope;
  /// Gets or sets AKS Assessment Settings.
  final AKSAssessmentSettingsResponse settings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.azureApiVersion,
    required this.details,
    required this.eTag,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.scope,
    required this.settings,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'details': details.toMap(),
      'eTag': eTag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'scope': ?scope?.toMap(),
      'settings': settings.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAksAssessmentOperationResult.fromMap(Map<String, dynamic> map) {
    return GetAksAssessmentOperationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      details: AKSAssessmentDetailsResponse.fromMap((map['details']! as Map).cast<String, dynamic>()),
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return AssessmentScopeParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      settings: AKSAssessmentSettingsResponse.fromMap((map['settings']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
