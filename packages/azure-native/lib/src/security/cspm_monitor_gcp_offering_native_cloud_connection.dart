// ignore_for_file: unused_element, unnecessary_cast


/// The native cloud connection configuration
class CspmMonitorGcpOfferingNativeCloudConnection {
  /// The service account email address in GCP for this offering
  final String? serviceAccountEmailAddress;
  /// The GCP workload identity provider id for the offering
  final String? workloadIdentityProviderId;

  /// Creates a new [CspmMonitorGcpOfferingNativeCloudConnection].
  /// [serviceAccountEmailAddress] The service account email address in GCP for this offering
  /// [workloadIdentityProviderId] The GCP workload identity provider id for the offering
  CspmMonitorGcpOfferingNativeCloudConnection({
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory CspmMonitorGcpOfferingNativeCloudConnection.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGcpOfferingNativeCloudConnection(
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : map['serviceAccountEmailAddress'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : map['workloadIdentityProviderId'] as String,
    );
  }
}

