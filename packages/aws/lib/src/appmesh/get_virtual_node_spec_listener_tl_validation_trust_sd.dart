// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlValidationTrustSd {
  final String secretName;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationTrustSd].
  /// [secretName] Required.
  GetVirtualNodeSpecListenerTlValidationTrustSd({
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretName'] = secretName;
    return map;
  }

  factory GetVirtualNodeSpecListenerTlValidationTrustSd.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationTrustSd(
      secretName: map['secretName'] as String,
    );
  }
}
