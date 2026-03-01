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
    pulumi.Output<String>? activeDate,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? certificateChain,
    pulumi.Output<String>? certificateId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? inactiveDate,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? usage,
  }) :
      activeDate = pulumi.Input.asOptionalInput<String>(activeDate),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      certificateChain = pulumi.Input.asOptionalInput<String>(certificateChain),
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      description = pulumi.Input.asOptionalInput<String>(description),
      inactiveDate = pulumi.Input.asOptionalInput<String>(inactiveDate),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      usage = pulumi.Input.asOptionalInput<String>(usage);

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
      activeDate: map['activeDate'] == null ? null : pulumi.Output.create<String>(map['activeDate'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      certificateChain: map['certificateChain'] == null ? null : pulumi.Output.create<String>(map['certificateChain'] as String),
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      inactiveDate: map['inactiveDate'] == null ? null : pulumi.Output.create<String>(map['inactiveDate'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      usage: map['usage'] == null ? null : pulumi.Output.create<String>(map['usage'] as String),
    );
  }
}

