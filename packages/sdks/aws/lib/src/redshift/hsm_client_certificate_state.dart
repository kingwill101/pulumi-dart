// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HsmClientCertificate resources.
class HsmClientCertificateState {
  /// Amazon Resource Name (ARN) of the Hsm Client Certificate.
  final pulumi.Input<String>? arn;
  /// The identifier of the HSM client certificate.
  final pulumi.Input<String>? hsmClientCertificateIdentifier;
  /// The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.
  final pulumi.Input<String>? hsmClientCertificatePublicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [HsmClientCertificateState].
  /// [arn] Amazon Resource Name (ARN) of the Hsm Client Certificate.
  /// [hsmClientCertificateIdentifier] The identifier of the HSM client certificate.
  /// [hsmClientCertificatePublicKey] The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  HsmClientCertificateState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? hsmClientCertificateIdentifier,
    pulumi.Output<String>? hsmClientCertificatePublicKey,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      hsmClientCertificateIdentifier = pulumi.Input.asOptionalInput<String>(hsmClientCertificateIdentifier),
      hsmClientCertificatePublicKey = pulumi.Input.asOptionalInput<String>(hsmClientCertificatePublicKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'hsmClientCertificateIdentifier': ?hsmClientCertificateIdentifier,
      'hsmClientCertificatePublicKey': ?hsmClientCertificatePublicKey,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory HsmClientCertificateState.fromMap(Map<String, dynamic> map) {
    return HsmClientCertificateState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      hsmClientCertificateIdentifier: map['hsmClientCertificateIdentifier'] == null ? null : pulumi.Output.create<String>(map['hsmClientCertificateIdentifier'] as String),
      hsmClientCertificatePublicKey: map['hsmClientCertificatePublicKey'] == null ? null : pulumi.Output.create<String>(map['hsmClientCertificatePublicKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

