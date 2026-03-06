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
  const HsmClientCertificateState({
    this.arn,
    this.hsmClientCertificateIdentifier,
    this.hsmClientCertificatePublicKey,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hsmClientCertificateIdentifier: (() { final guardedValue = map['hsmClientCertificateIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hsmClientCertificatePublicKey: (() { final guardedValue = map['hsmClientCertificatePublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

