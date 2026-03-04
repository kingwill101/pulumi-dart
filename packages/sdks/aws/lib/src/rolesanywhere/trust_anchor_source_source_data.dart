// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustAnchorSourceSourceData {
  /// The ARN of an ACM Private Certificate Authority.
  final pulumi.Input<String>? acmPcaArn;
  final pulumi.Input<String>? x509CertificateData;

  /// Creates a new [TrustAnchorSourceSourceData].
  /// [acmPcaArn] The ARN of an ACM Private Certificate Authority.
  /// [x509CertificateData] Optional.
  TrustAnchorSourceSourceData({this.acmPcaArn, this.x509CertificateData});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acmPcaArn': ?acmPcaArn,
      'x509CertificateData': ?x509CertificateData,
    };
  }

  factory TrustAnchorSourceSourceData.fromMap(Map<String, dynamic> map) {
    return TrustAnchorSourceSourceData(
      acmPcaArn: (() {
        final guardedValue = map['acmPcaArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      x509CertificateData: (() {
        final guardedValue = map['x509CertificateData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
