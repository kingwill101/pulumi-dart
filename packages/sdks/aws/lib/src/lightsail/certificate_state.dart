// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_domain_validation_option.dart';

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// ARN of the certificate.
  final pulumi.Input<String>? arn;
  /// Date and time when the certificate was created.
  final pulumi.Input<String>? createdAt;
  /// Domain name for which the certificate should be issued.
  final pulumi.Input<String>? domainName;
  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Each element contains the following attributes:
  final pulumi.Input<List<CertificateDomainValidationOption>>? domainValidationOptions;
  /// Name of the certificate.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CertificateState].
  /// [arn] ARN of the certificate.
  /// [createdAt] Date and time when the certificate was created.
  /// [domainName] Domain name for which the certificate should be issued.
  /// [domainValidationOptions] Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Each element contains the following attributes:
  /// [name] Name of the certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subjectAlternativeNames] Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CertificateState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<CertificateDomainValidationOption>>? domainValidationOptions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? subjectAlternativeNames,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainValidationOptions = pulumi.Input.asOptionalInput<List<CertificateDomainValidationOption>>(domainValidationOptions),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      subjectAlternativeNames = pulumi.Input.asOptionalInput<List<String>>(subjectAlternativeNames),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'domainName': ?domainName,
      'domainValidationOptions': ?pulumi.Input.mapOptionalInputValue<List<CertificateDomainValidationOption>, List<Map<String, dynamic>>>(domainValidationOptions, (value) => pulumi.Input.encodeList<CertificateDomainValidationOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainValidationOptions: map['domainValidationOptions'] == null ? null : pulumi.Output.create<List<CertificateDomainValidationOption>>(pulumi.Input.decodeList<CertificateDomainValidationOption>(map['domainValidationOptions'], (value) => CertificateDomainValidationOption.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : pulumi.Output.create<List<String>>((map['subjectAlternativeNames'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

