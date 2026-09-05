// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Date when the certificate becomes active
  final pulumi.Input<String?>? activeDate;
  /// ARN of the certificate
  final pulumi.Input<String?>? arn;
  /// Valid certificate file required for the transfer.
  final pulumi.Input<String?>? certificate;
  /// Optional list of certificate that make up the chain for the certificate that is being imported.
  final pulumi.Input<String?>? certificateChain;
  /// Unique identifier for the AS2 certificate
  final pulumi.Input<String?>? certificateId;
  /// Short description that helps identify the certificate.
  final pulumi.Input<String?>? description;
  /// Date when the certificate becomes inactive
  final pulumi.Input<String?>? inactiveDate;
  /// Private key associated with the certificate being imported.
  final pulumi.Input<String?>? privateKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Whether a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  final pulumi.Input<String?>? usage;

  /// Creates a new [CertificateState].
  /// [activeDate] Date when the certificate becomes active
  /// [arn] ARN of the certificate
  /// [certificate] Valid certificate file required for the transfer.
  /// [certificateChain] Optional list of certificate that make up the chain for the certificate that is being imported.
  /// [certificateId] Unique identifier for the AS2 certificate
  /// [description] Short description that helps identify the certificate.
  /// [inactiveDate] Date when the certificate becomes inactive
  /// [privateKey] Private key associated with the certificate being imported.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [usage] Whether a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  const CertificateState({
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
      activeDate: (() { final guardedValue = map['activeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inactiveDate: (() { final guardedValue = map['inactiveDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
