// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrivateCloudVcfLicense.
class GetPrivateCloudVcfLicenseResult {
  /// License kind
  final String? kind;
  /// The state of the license provisioning
  final String? provisioningState;

  /// Creates a new [GetPrivateCloudVcfLicenseResult].
  /// [kind] License kind
  /// [provisioningState] The state of the license provisioning
  const GetPrivateCloudVcfLicenseResult({
    this.kind,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'provisioningState': ?provisioningState,
    };
  }

  factory GetPrivateCloudVcfLicenseResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudVcfLicenseResult(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
