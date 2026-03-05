// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomainCertInfo {
  /// If You Enable HTTPS Here Certificate Name.
  final pulumi.Input<String> certName;
  /// Certificate Type. Value Range: Upload: Certificate. CAS: Certificate Authority Certificate. Free: Free Certificate.
  final pulumi.Input<String> certType;
  /// Whether to Enable SSL Certificate. Valid Values: on, off.
  final pulumi.Input<String> sslProtocol;
  /// If You Enable HTTPS Here Key.
  final pulumi.Input<String> sslPub;

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
      certName: pulumi.Input.fromValue(map['certName'] as String),
      certType: pulumi.Input.fromValue(map['certType'] as String),
      sslProtocol: pulumi.Input.fromValue(map['sslProtocol'] as String),
      sslPub: pulumi.Input.fromValue(map['sslPub'] as String),
    );
  }
}

