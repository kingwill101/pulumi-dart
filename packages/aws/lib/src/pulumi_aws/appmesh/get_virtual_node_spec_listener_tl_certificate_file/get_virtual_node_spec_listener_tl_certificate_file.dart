// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTlCertificateFile {
  final String certificateChain;
  final String privateKey;

  GetVirtualNodeSpecListenerTlCertificateFile({
    required this.certificateChain,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateChain'] = certificateChain;
    map['privateKey'] = privateKey;
    return map;
  }

  factory GetVirtualNodeSpecListenerTlCertificateFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificateFile(
      certificateChain: map['certificateChain'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}
