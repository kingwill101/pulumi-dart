// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SSLCertificate.
class SSLCertificateArgs {
  /// The certificate in PEM format.
  /// The certificate chain must be no greater than 5 certs long.
  /// The chain must include at least one intermediate cert.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> certificate;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the
  /// specified prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  /// Resulting name for a `name_prefix` <= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  final pulumi.Input<String>? namePrefix;

  /// The write-only private key in PEM format.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> privateKey;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  SSLCertificateArgs({
    required this.certificate,
    this.description,
    this.name,
    this.namePrefix,
    required this.privateKey,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificate'] = certificate;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    map['privateKey'] = privateKey;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory SSLCertificateArgs.fromMap(Map<String, dynamic> map) {
    return SSLCertificateArgs(
      certificate: pulumi.Input.asInput<String>(map['certificate']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      privateKey: pulumi.Input.asInput<String>(map['privateKey']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
