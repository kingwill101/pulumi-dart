// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlValidationTrustSd {
  final String secretName;

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
