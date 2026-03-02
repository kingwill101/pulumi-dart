// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Certificate
class CertificateResponse {
  /// The Amazon Resource Name (ARN) of the certificate.
  final pulumi.Input<String>? certificateArn;
  /// <p>The Base64-encoded certificate data required to communicate with your cluster. Add this to the <code>certificate-authority-data</code> section of the <code>kubeconfig</code> file for your cluster.</p>
  final pulumi.Input<String>? data;

  /// Creates a new [CertificateResponse].
  /// [certificateArn] The Amazon Resource Name (ARN) of the certificate.
  /// [data] <p>The Base64-encoded certificate data required to communicate with your cluster. Add this to the <code>certificate-authority-data</code> section of the <code>kubeconfig</code> file for your cluster.</p>
  CertificateResponse({
    this.certificateArn,
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'data': ?data,
    };
  }

  factory CertificateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateResponse(
      certificateArn: map['certificateArn'] == null ? null : (map['certificateArn']! as String).input(),
      data: map['data'] == null ? null : (map['data']! as String).input(),
    );
  }
}

