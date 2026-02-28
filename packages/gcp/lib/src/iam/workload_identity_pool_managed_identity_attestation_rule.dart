// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolManagedIdentityAttestationRule {
  /// A single workload operating on Google Cloud. For example:
  /// `//compute.googleapis.com/projects/123/uid/zones/us-central1-a/instances/12345678`.
  final String googleCloudResource;

  /// Creates a new [WorkloadIdentityPoolManagedIdentityAttestationRule].
  /// [googleCloudResource] A single workload operating on Google Cloud. For example:
  WorkloadIdentityPoolManagedIdentityAttestationRule({
    required this.googleCloudResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['googleCloudResource'] = googleCloudResource;
    return map;
  }

  factory WorkloadIdentityPoolManagedIdentityAttestationRule.fromMap(
      Map<String, dynamic> map) {
    return WorkloadIdentityPoolManagedIdentityAttestationRule(
      googleCloudResource: map['googleCloudResource'] as String,
    );
  }
}
