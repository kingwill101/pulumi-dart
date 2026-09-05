// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// ARN for the certificate.
  final pulumi.Input<String?>? certificateArn;
  /// The certificate identifier.
  final pulumi.Input<String?>? certificateId;
  /// The contents of the .pem X.509 certificate file for the certificate. Either `certificatePem` or `certificateWallet` must be set.
  final pulumi.Input<String?>? certificatePem;
  /// The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either `certificatePem` or `certificateWallet` must be set.
  final pulumi.Input<String?>? certificateWallet;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [CertificateState].
  /// [certificateArn] ARN for the certificate.
  /// [certificateId] The certificate identifier.
  /// [certificatePem] The contents of the .pem X.509 certificate file for the certificate. Either `certificatePem` or `certificateWallet` must be set.
  /// [certificateWallet] The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either `certificatePem` or `certificateWallet` must be set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const CertificateState({
    this.certificateArn,
    this.certificateId,
    this.certificatePem,
    this.certificateWallet,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificatePem: (() { final guardedValue = map['certificatePem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateWallet: (() { final guardedValue = map['certificateWallet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
