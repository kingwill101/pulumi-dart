// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Certificate
class Certificate {
  /// The Amazon Resource Name (ARN) of the certificate.
  final pulumi.Input<String?>? certificateArn;
  /// &lt;p&gt;The Base64-encoded certificate data required to communicate with your cluster. Add this to the &lt;code&gt;certificate-authority-data&lt;/code&gt; section of the &lt;code&gt;kubeconfig&lt;/code&gt; file for your cluster.&lt;/p&gt;
  final pulumi.Input<String?>? data;

  /// Creates a new [Certificate].
  /// [certificateArn] The Amazon Resource Name (ARN) of the certificate.
  /// [data] &lt;p&gt;The Base64-encoded certificate data required to communicate with your cluster. Add this to the &lt;code&gt;certificate-authority-data&lt;/code&gt; section of the &lt;code&gt;kubeconfig&lt;/code&gt; file for your cluster.&lt;/p&gt;
  const Certificate({
    this.certificateArn,
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'data': ?data,
    };
  }

  factory Certificate.fromMap(Map<String, dynamic> map) {
    return Certificate(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
