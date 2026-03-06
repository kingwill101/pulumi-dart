// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLicense.
class GetLicenseResult {
  /// License kind
  final String kind;
  /// The state of the license provisioning
  final String provisioningState;

  /// Creates a new [GetLicenseResult].
  /// [kind] License kind
  /// [provisioningState] The state of the license provisioning
  const GetLicenseResult({
    required this.kind,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'provisioningState': provisioningState,
    };
  }

  factory GetLicenseResult.fromMap(Map<String, dynamic> map) {
    return GetLicenseResult(
      kind: map['kind'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

