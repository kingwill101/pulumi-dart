// ignore_for_file: unused_element, unnecessary_cast

/// External key management systems(EKM) Provisioning response
class GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse {
  /// Indicates Ekm provisioning error if any.
  final String ekmProvisioningErrorDomain;

  /// Detailed error message if Ekm provisioning fails
  final String ekmProvisioningErrorMapping;

  /// Indicates Ekm enrollment Provisioning of a given workload.
  final String ekmProvisioningState;

  GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse({
    required this.ekmProvisioningErrorDomain,
    required this.ekmProvisioningErrorMapping,
    required this.ekmProvisioningState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ekmProvisioningErrorDomain'] = ekmProvisioningErrorDomain;
    map['ekmProvisioningErrorMapping'] = ekmProvisioningErrorMapping;
    map['ekmProvisioningState'] = ekmProvisioningState;
    return map;
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse(
      ekmProvisioningErrorDomain: map['ekmProvisioningErrorDomain'] as String,
      ekmProvisioningErrorMapping: map['ekmProvisioningErrorMapping'] as String,
      ekmProvisioningState: map['ekmProvisioningState'] as String,
    );
  }
}
