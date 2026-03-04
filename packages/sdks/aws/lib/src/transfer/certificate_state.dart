// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// An date when the certificate becomes active
  final pulumi.Input<String>? activeDate;

  /// The ARN of the certificate
  final pulumi.Input<String>? arn;

  /// The valid certificate file required for the transfer.
  final pulumi.Input<String>? certificate;

  /// The optional list of certificate that make up the chain for the certificate that is being imported.
  final pulumi.Input<String>? certificateChain;

  /// The unique identifier for the AS2 certificate
  final pulumi.Input<String>? certificateId;

  /// A short description that helps identify the certificate.
  final pulumi.Input<String>? description;

  /// An date when the certificate becomes inactive
  final pulumi.Input<String>? inactiveDate;

  /// The private key associated with the certificate being imported.
  final pulumi.Input<String>? privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Specifies if a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  final pulumi.Input<String>? usage;

  /// Creates a new [CertificateState].
  /// [activeDate] An date when the certificate becomes active
  /// [arn] The ARN of the certificate
  /// [certificate] The valid certificate file required for the transfer.
  /// [certificateChain] The optional list of certificate that make up the chain for the certificate that is being imported.
  /// [certificateId] The unique identifier for the AS2 certificate
  /// [description] A short description that helps identify the certificate.
  /// [inactiveDate] An date when the certificate becomes inactive
  /// [privateKey] The private key associated with the certificate being imported.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [usage] Specifies if a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  CertificateState({
    this.activeDate,
    this.arn,
    this.certificate,
    this.certificateChain,
    this.certificateId,
    this.description,
    this.inactiveDate,
    this.privateKey,
    this.region,
    this.tags,
    this.tagsAll,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDate': ?activeDate,
      'arn': ?arn,
      'certificate': ?certificate,
      'certificateChain': ?certificateChain,
      'certificateId': ?certificateId,
      'description': ?description,
      'inactiveDate': ?inactiveDate,
      'privateKey': ?privateKey,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'usage': ?usage,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      activeDate: (() {
        final guardedValue = map['activeDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificate: (() {
        final guardedValue = map['certificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateChain: (() {
        final guardedValue = map['certificateChain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateId: (() {
        final guardedValue = map['certificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inactiveDate: (() {
        final guardedValue = map['inactiveDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      usage: (() {
        final guardedValue = map['usage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
