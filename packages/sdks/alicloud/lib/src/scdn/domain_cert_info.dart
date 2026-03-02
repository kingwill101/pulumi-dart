// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCertInfo {
  /// If You Enable HTTPS Here Certificate Name.
  final pulumi.Input<String>? certName;
  /// Certificate Type. Value Range:
  /// * upload: Certificate
  /// * cas: Certificate Authority Certificate.
  /// * free: Free Certificate.
  final pulumi.Input<String>? certType;
  /// Private Key. Do Not Enable Certificate without Entering a User Name and Configure Certificates Enter Private Key.
  final pulumi.Input<String>? sslPri;
  /// Whether to Enable SSL Certificate. Valid Values: on, off. Valid values: `on`, `off`.
  final pulumi.Input<String>? sslProtocol;
  /// If You Enable HTTPS Here Key.
  final pulumi.Input<String>? sslPub;

  /// Creates a new [DomainCertInfo].
  /// [certName] If You Enable HTTPS Here Certificate Name.
  /// [certType] Certificate Type. Value Range:
  /// [sslPri] Private Key. Do Not Enable Certificate without Entering a User Name and Configure Certificates Enter Private Key.
  /// [sslProtocol] Whether to Enable SSL Certificate. Valid Values: on, off. Valid values: `on`, `off`.
  /// [sslPub] If You Enable HTTPS Here Key.
  DomainCertInfo({
    this.certName,
    this.certType,
    this.sslPri,
    this.sslProtocol,
    this.sslPub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': ?certName,
      'certType': ?certType,
      'sslPri': ?sslPri,
      'sslProtocol': ?sslProtocol,
      'sslPub': ?sslPub,
    };
  }

  factory DomainCertInfo.fromMap(Map<String, dynamic> map) {
    return DomainCertInfo(
      certName: map['certName'] == null ? null : (map['certName']! as String).input(),
      certType: map['certType'] == null ? null : (map['certType']! as String).input(),
      sslPri: map['sslPri'] == null ? null : (map['sslPri']! as String).input(),
      sslProtocol: map['sslProtocol'] == null ? null : (map['sslProtocol']! as String).input(),
      sslPub: map['sslPub'] == null ? null : (map['sslPub']! as String).input(),
    );
  }
}

