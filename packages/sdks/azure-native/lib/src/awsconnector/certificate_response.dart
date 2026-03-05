// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Certificate
class CertificateResponse {
  /// The Amazon Resource Name (ARN) of the certificate.
  final pulumi.Input<String>? certificateArn;
  /// &lt;p&gt;The Base64-encoded certificate data required to communicate with your cluster. Add this to the &lt;code&gt;certificate-authority-data&lt;/code&gt; section of the &lt;code&gt;kubeconfig&lt;/code&gt; file for your cluster.&lt;/p&gt;
  final pulumi.Input<String>? data;

  /// Creates a new [CertificateResponse].
  /// [certificateArn] The Amazon Resource Name (ARN) of the certificate.
  /// [data] &lt;p&gt;The Base64-encoded certificate data required to communicate with your cluster. Add this to the &lt;code&gt;certificate-authority-data&lt;/code&gt; section of the &lt;code&gt;kubeconfig&lt;/code&gt; file for your cluster.&lt;/p&gt;
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
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

