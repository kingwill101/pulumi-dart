// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for SslCert.
class SslCertArgs {
  /// User supplied name. Must be a distinct name from the other certificates for this instance.
  final Input<String>? commonName;
  final Input<String> instance;
  final Input<String>? project;

  SslCertArgs({
    this.commonName,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commonNameValue = commonName;
    if (commonNameValue != null) {
      map['commonName'] = commonNameValue;
    }
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory SslCertArgs.fromMap(Map<String, dynamic> map) {
    return SslCertArgs(
      commonName: Input.asOptionalInput<String>(map['commonName']),
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
