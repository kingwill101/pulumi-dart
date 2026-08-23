// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Certificate
class CertificateElasticLoadBalancingV2ListenerResponse {
  /// The Amazon Resource Name (ARN) of the certificate.
  final pulumi.Input<String>? certificateArn;

  /// Creates a new [CertificateElasticLoadBalancingV2ListenerResponse].
  /// [certificateArn] The Amazon Resource Name (ARN) of the certificate.
  const CertificateElasticLoadBalancingV2ListenerResponse({
    this.certificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
    };
  }

  factory CertificateElasticLoadBalancingV2ListenerResponse.fromMap(Map<String, dynamic> map) {
    return CertificateElasticLoadBalancingV2ListenerResponse(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
