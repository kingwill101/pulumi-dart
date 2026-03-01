// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrivateCloudVcfLicense.
class GetPrivateCloudVcfLicenseResult {
  /// License kind
  final String kind;
  /// The state of the license provisioning
  final String provisioningState;

  /// Creates a new [GetPrivateCloudVcfLicenseResult].
  /// [kind] License kind
  /// [provisioningState] The state of the license provisioning
  GetPrivateCloudVcfLicenseResult({
    required this.kind,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'provisioningState': provisioningState,
    };
  }

  factory GetPrivateCloudVcfLicenseResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudVcfLicenseResult(
      kind: map['kind'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

