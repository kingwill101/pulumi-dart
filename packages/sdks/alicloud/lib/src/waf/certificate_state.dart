// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Certificate file content.
  final pulumi.Input<String>? certificate;
  /// The certificate id is automatically generated when you upload your certificate content.**NOTE:** you can also use Certificate ID saved in SSL.
  final pulumi.Input<String>? certificateId;
  /// Certificate file name.
  final pulumi.Input<String>? certificateName;
  /// The domain that you want to add to WAF.
  final pulumi.Input<String>? domain;
  /// The ID of the WAF instance.
  final pulumi.Input<String>? instanceId;
  /// The private key.
  final pulumi.Input<String>? privateKey;

  /// Creates a new [CertificateState].
  /// [certificate] Certificate file content.
  /// [certificateId] The certificate id is automatically generated when you upload your certificate content.**NOTE:** you can also use Certificate ID saved in SSL.
  /// [certificateName] Certificate file name.
  /// [domain] The domain that you want to add to WAF.
  /// [instanceId] The ID of the WAF instance.
  /// [privateKey] The private key.
  CertificateState({
    this.certificate,
    this.certificateId,
    this.certificateName,
    this.domain,
    this.instanceId,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateId': ?certificateId,
      'certificateName': ?certificateName,
      'domain': ?domain,
      'instanceId': ?instanceId,
      'privateKey': ?privateKey,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      certificateId: map['certificateId'] == null ? null : (map['certificateId'] as String).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
    );
  }
}

