// ignore_for_file: unused_element, unnecessary_cast

class WorkloadEkmProvisioningResponse {
  /// Indicates Ekm provisioning error if any. Possible values: EKM_PROVISIONING_ERROR_DOMAIN_UNSPECIFIED, UNSPECIFIED_ERROR, GOOGLE_SERVER_ERROR, EXTERNAL_USER_ERROR, EXTERNAL_PARTNER_ERROR, TIMEOUT_ERROR
  final String? ekmProvisioningErrorDomain;

  /// Detailed error message if Ekm provisioning fails Possible values: EKM_PROVISIONING_ERROR_MAPPING_UNSPECIFIED, INVALID_SERVICE_ACCOUNT, MISSING_METRICS_SCOPE_ADMIN_PERMISSION, MISSING_EKM_CONNECTION_ADMIN_PERMISSION
  final String? ekmProvisioningErrorMapping;

  /// Indicates Ekm enrollment Provisioning of a given workload. Possible values: EKM_PROVISIONING_STATE_UNSPECIFIED, EKM_PROVISIONING_STATE_PENDING, EKM_PROVISIONING_STATE_FAILED, EKM_PROVISIONING_STATE_COMPLETED
  final String? ekmProvisioningState;

  /// Creates a new [WorkloadEkmProvisioningResponse].
  /// [ekmProvisioningErrorDomain] Indicates Ekm provisioning error if any. Possible values: EKM_PROVISIONING_ERROR_DOMAIN_UNSPECIFIED, UNSPECIFIED_ERROR, GOOGLE_SERVER_ERROR, EXTERNAL_USER_ERROR, EXTERNAL_PARTNER_ERROR, TIMEOUT_ERROR
  /// [ekmProvisioningErrorMapping] Detailed error message if Ekm provisioning fails Possible values: EKM_PROVISIONING_ERROR_MAPPING_UNSPECIFIED, INVALID_SERVICE_ACCOUNT, MISSING_METRICS_SCOPE_ADMIN_PERMISSION, MISSING_EKM_CONNECTION_ADMIN_PERMISSION
  /// [ekmProvisioningState] Indicates Ekm enrollment Provisioning of a given workload. Possible values: EKM_PROVISIONING_STATE_UNSPECIFIED, EKM_PROVISIONING_STATE_PENDING, EKM_PROVISIONING_STATE_FAILED, EKM_PROVISIONING_STATE_COMPLETED
  WorkloadEkmProvisioningResponse({
    this.ekmProvisioningErrorDomain,
    this.ekmProvisioningErrorMapping,
    this.ekmProvisioningState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ekmProvisioningErrorDomainValue = ekmProvisioningErrorDomain;
    if (ekmProvisioningErrorDomainValue != null) {
      map['ekmProvisioningErrorDomain'] = ekmProvisioningErrorDomainValue;
    }
    final ekmProvisioningErrorMappingValue = ekmProvisioningErrorMapping;
    if (ekmProvisioningErrorMappingValue != null) {
      map['ekmProvisioningErrorMapping'] = ekmProvisioningErrorMappingValue;
    }
    final ekmProvisioningStateValue = ekmProvisioningState;
    if (ekmProvisioningStateValue != null) {
      map['ekmProvisioningState'] = ekmProvisioningStateValue;
    }
    return map;
  }

  factory WorkloadEkmProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadEkmProvisioningResponse(
      ekmProvisioningErrorDomain: map['ekmProvisioningErrorDomain'] == null
          ? null
          : map['ekmProvisioningErrorDomain'] as String,
      ekmProvisioningErrorMapping: map['ekmProvisioningErrorMapping'] == null
          ? null
          : map['ekmProvisioningErrorMapping'] as String,
      ekmProvisioningState: map['ekmProvisioningState'] == null
          ? null
          : map['ekmProvisioningState'] as String,
    );
  }
}
