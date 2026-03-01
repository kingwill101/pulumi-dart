// ignore_for_file: unused_element, unnecessary_cast


/// The Microsoft Defender Container image assessment configuration
class DefenderCspmGcpOfferingMdcContainersImageAssessment {
  /// Is Microsoft Defender container image assessment enabled
  final bool? enabled;
  /// The service account email address in GCP for this feature
  final String? serviceAccountEmailAddress;
  /// The workload identity provider id in GCP for this feature
  final String? workloadIdentityProviderId;

  /// Creates a new [DefenderCspmGcpOfferingMdcContainersImageAssessment].
  /// [enabled] Is Microsoft Defender container image assessment enabled
  /// [serviceAccountEmailAddress] The service account email address in GCP for this feature
  /// [workloadIdentityProviderId] The workload identity provider id in GCP for this feature
  DefenderCspmGcpOfferingMdcContainersImageAssessment({
    this.enabled,
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory DefenderCspmGcpOfferingMdcContainersImageAssessment.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingMdcContainersImageAssessment(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : map['serviceAccountEmailAddress'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : map['workloadIdentityProviderId'] as String,
    );
  }
}

