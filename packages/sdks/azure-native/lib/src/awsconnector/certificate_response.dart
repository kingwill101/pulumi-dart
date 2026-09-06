// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Certificate
class CertificateResponse {
  /// &lt;p&gt;The Base64-encoded certificate data required to communicate with your cluster. Add this to the &lt;code&gt;certificate-authority-data&lt;/code&gt; section of the &lt;code&gt;kubeconfig&lt;/code&gt; file for your cluster.&lt;/p&gt;
  final pulumi.Input<String?>? data;

  /// Creates a new [CertificateResponse].
  /// [data] &lt;p&gt;The Base64-encoded certificate data required to communicate with your cluster. Add this to the &lt;code&gt;certificate-authority-data&lt;/code&gt; section of the &lt;code&gt;kubeconfig&lt;/code&gt; file for your cluster.&lt;/p&gt;
  const CertificateResponse({
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
    };
  }

  factory CertificateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateResponse(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
