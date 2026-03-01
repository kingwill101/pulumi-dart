// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_lightsail_certificate_certificate_args_doc}
class CertificateArgs {
  /// Domain name for which the certificate should be issued.
  final pulumi.Input<String>? domainName;

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

  /// Creates a new [CertificateArgs].
  /// [domainName] Domain name for which the certificate should be issued.
  /// [name] Name of the certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subjectAlternativeNames] Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CertificateArgs({
    String? domainName,
    String? name,
    String? region,
    List<String>? subjectAlternativeNames,
    Map<String, String>? tags,
  }) : domainName = pulumi.Input.asOptionalInput<String>(domainName),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       subjectAlternativeNames = pulumi.Input.asOptionalInput<List<String>>(
         subjectAlternativeNames,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'name': ?name,
      'region': ?region,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'tags': ?tags,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      domainName: map['domainName'] == null
          ? null
          : map['domainName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      subjectAlternativeNames: map['subjectAlternativeNames'] == null
          ? null
          : (map['subjectAlternativeNames'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
