// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LbCertificate.
class LbCertificateArgs {
  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  final Input<String>? domainName;

  /// Load balancer name where you want to create the SSL/TLS certificate.
  final Input<String> lbName;

  /// SSL/TLS certificate name.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  final Input<List<String>>? subjectAlternativeNames;

  LbCertificateArgs({
    this.domainName,
    required this.lbName,
    this.name,
    this.region,
    this.subjectAlternativeNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    map['lbName'] = lbName;
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
    return map;
  }

  factory LbCertificateArgs.fromMap(Map<String, dynamic> map) {
    return LbCertificateArgs(
      domainName: Input.asOptionalInput<String>(map['domainName']),
      lbName: Input.asInput<String>(map['lbName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      subjectAlternativeNames:
          Input.asOptionalInput<List<String>>(map['subjectAlternativeNames']),
    );
  }
}
