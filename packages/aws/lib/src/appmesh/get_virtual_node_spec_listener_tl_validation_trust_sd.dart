// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlValidationTrustSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualNodeSpecListenerTlValidationTrustSd({required this.secretName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretName': secretName};
  }

  factory GetVirtualNodeSpecListenerTlValidationTrustSd.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTlValidationTrustSd(
      secretName: map['secretName'] as String,
    );
  }
}
