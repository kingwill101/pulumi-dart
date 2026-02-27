// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HsmClientCertificate.
class HsmClientCertificateArgs {
  /// The identifier of the HSM client certificate.
  final pulumi.Input<String> hsmClientCertificateIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  HsmClientCertificateArgs({
    required this.hsmClientCertificateIdentifier,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hsmClientCertificateIdentifier'] = hsmClientCertificateIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory HsmClientCertificateArgs.fromMap(Map<String, dynamic> map) {
    return HsmClientCertificateArgs(
      hsmClientCertificateIdentifier:
          pulumi.Input.asInput<String>(map['hsmClientCertificateIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
