// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CertificateAuthorityCertificate resources.
class CertificateAuthorityCertificateState {
  /// PEM-encoded certificate for the Certificate Authority.
  final pulumi.Input<String>? certificate;
  /// ARN of the Certificate Authority.
  final pulumi.Input<String>? certificateAuthorityArn;
  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA. Required for subordinate Certificate Authorities. Not allowed for root Certificate Authorities.
  final pulumi.Input<String>? certificateChain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [CertificateAuthorityCertificateState].
  /// [certificate] PEM-encoded certificate for the Certificate Authority.
  /// [certificateAuthorityArn] ARN of the Certificate Authority.
  /// [certificateChain] PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA. Required for subordinate Certificate Authorities. Not allowed for root Certificate Authorities.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  CertificateAuthorityCertificateState({
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? certificateAuthorityArn,
    pulumi.Output<String>? certificateChain,
    pulumi.Output<String>? region,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      certificateAuthorityArn = pulumi.Input.asOptionalInput<String>(certificateAuthorityArn),
      certificateChain = pulumi.Input.asOptionalInput<String>(certificateChain),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'certificateChain': ?certificateChain,
      'region': ?region,
    };
  }

  factory CertificateAuthorityCertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityCertificateState(
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      certificateAuthorityArn: map['certificateAuthorityArn'] == null ? null : pulumi.Output.create<String>(map['certificateAuthorityArn'] as String),
      certificateChain: map['certificateChain'] == null ? null : pulumi.Output.create<String>(map['certificateChain'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

