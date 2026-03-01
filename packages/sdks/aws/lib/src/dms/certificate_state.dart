// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// The Amazon Resource Name (ARN) for the certificate.
  final pulumi.Input<String>? certificateArn;
  /// The certificate identifier.
  final pulumi.Input<String>? certificateId;
  /// The contents of the .pem X.509 certificate file for the certificate. Either `certificate_pem` or `certificate_wallet` must be set.
  final pulumi.Input<String>? certificatePem;
  /// The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either `certificate_pem` or `certificate_wallet` must be set.
  final pulumi.Input<String>? certificateWallet;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CertificateState].
  /// [certificateArn] The Amazon Resource Name (ARN) for the certificate.
  /// [certificateId] The certificate identifier.
  /// [certificatePem] The contents of the .pem X.509 certificate file for the certificate. Either `certificate_pem` or `certificate_wallet` must be set.
  /// [certificateWallet] The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either `certificate_pem` or `certificate_wallet` must be set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CertificateState({
    pulumi.Output<String>? certificateArn,
    pulumi.Output<String>? certificateId,
    pulumi.Output<String>? certificatePem,
    pulumi.Output<String>? certificateWallet,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      certificateArn = pulumi.Input.asOptionalInput<String>(certificateArn),
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      certificatePem = pulumi.Input.asOptionalInput<String>(certificatePem),
      certificateWallet = pulumi.Input.asOptionalInput<String>(certificateWallet),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'certificateId': ?certificateId,
      'certificatePem': ?certificatePem,
      'certificateWallet': ?certificateWallet,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      certificateArn: map['certificateArn'] == null ? null : pulumi.Output.create<String>(map['certificateArn'] as String),
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      certificatePem: map['certificatePem'] == null ? null : pulumi.Output.create<String>(map['certificatePem'] as String),
      certificateWallet: map['certificateWallet'] == null ? null : pulumi.Output.create<String>(map['certificateWallet'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

