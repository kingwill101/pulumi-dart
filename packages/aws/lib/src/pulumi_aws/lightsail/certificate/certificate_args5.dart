// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Certificate.
class CertificateArgs5 {
  /// Domain name for which the certificate should be issued.
  final Input<String>? domainName;

  /// Name of the certificate.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set of domains that should be SANs in the issued certificate. <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span> attribute is automatically added as a Subject Alternative Name.
  final Input<List<String>>? subjectAlternativeNames;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  CertificateArgs5({
    this.domainName,
    this.name,
    this.region,
    this.subjectAlternativeNames,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subjectAlternativeNamesValue = subjectAlternativeNames;
    if (subjectAlternativeNamesValue != null) {
      map['subjectAlternativeNames'] = subjectAlternativeNamesValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CertificateArgs5.fromMap(Map<String, dynamic> map) {
    return CertificateArgs5(
      domainName: Input.asOptionalInput<String>(map['domainName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      subjectAlternativeNames:
          Input.asOptionalInput<List<String>>(map['subjectAlternativeNames']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
