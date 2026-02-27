// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Certificate.
class CertificateLightsailArgs {
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

  CertificateLightsailArgs({
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

  factory CertificateLightsailArgs.fromMap(Map<String, dynamic> map) {
    return CertificateLightsailArgs(
      domainName: pulumi.Input.asOptionalInput<String>(map['domainName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subjectAlternativeNames: pulumi.Input.asOptionalInput<List<String>>(
          map['subjectAlternativeNames']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
