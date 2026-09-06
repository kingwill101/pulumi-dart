// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLicense.
class GetLicenseResult {
  /// License kind
  final String? kind;
  /// The state of the license provisioning
  final String? provisioningState;

  /// Creates a new [GetLicenseResult].
  /// [kind] License kind
  /// [provisioningState] The state of the license provisioning
  const GetLicenseResult({
    this.kind,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'provisioningState': ?provisioningState,
    };
  }

  factory GetLicenseResult.fromMap(Map<String, dynamic> map) {
    return GetLicenseResult(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
