// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomainCertInfo {
  /// If You Enable HTTPS Here Certificate Name.
  final String certName;
  /// Certificate Type. Value Range: Upload: Certificate. CAS: Certificate Authority Certificate. Free: Free Certificate.
  final String certType;
  /// Whether to Enable SSL Certificate. Valid Values: on, off.
  final String sslProtocol;
  /// If You Enable HTTPS Here Key.
  final String sslPub;

  /// Creates a new [GetDomainsDomainCertInfo].
  /// [certName] If You Enable HTTPS Here Certificate Name.
  /// [certType] Certificate Type. Value Range: Upload: Certificate. CAS: Certificate Authority Certificate. Free: Free Certificate.
  /// [sslProtocol] Whether to Enable SSL Certificate. Valid Values: on, off.
  /// [sslPub] If You Enable HTTPS Here Key.
  GetDomainsDomainCertInfo({
    required this.certName,
    required this.certType,
    required this.sslProtocol,
    required this.sslPub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': certName,
      'certType': certType,
      'sslProtocol': sslProtocol,
      'sslPub': sslPub,
    };
  }

  factory GetDomainsDomainCertInfo.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainCertInfo(
      certName: map['certName'] as String,
      certType: map['certType'] as String,
      sslProtocol: map['sslProtocol'] as String,
      sslPub: map['sslPub'] as String,
    );
  }
}

