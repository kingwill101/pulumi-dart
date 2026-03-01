// ignore_for_file: unused_element, unnecessary_cast


/// The native cloud connection configuration
class DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection {
  /// The data collection service account email address in GCP for this offering
  final String? serviceAccountEmailAddress;
  /// The data collection GCP workload identity provider id for this offering
  final String? workloadIdentityProviderId;

  /// Creates a new [DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection].
  /// [serviceAccountEmailAddress] The data collection service account email address in GCP for this offering
  /// [workloadIdentityProviderId] The data collection GCP workload identity provider id for this offering
  DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection({
    this.serviceAccountEmailAddress,
    this.workloadIdentityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmailAddress': ?serviceAccountEmailAddress,
      'workloadIdentityProviderId': ?workloadIdentityProviderId,
    };
  }

  factory DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection(
      serviceAccountEmailAddress: map['serviceAccountEmailAddress'] == null ? null : map['serviceAccountEmailAddress'] as String,
      workloadIdentityProviderId: map['workloadIdentityProviderId'] == null ? null : map['workloadIdentityProviderId'] as String,
    );
  }
}

