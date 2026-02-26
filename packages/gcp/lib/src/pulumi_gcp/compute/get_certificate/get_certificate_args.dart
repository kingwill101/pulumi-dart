// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCertificate.
class GetCertificateArgs {
  /// The name of the certificate.
  ///
  /// - - -
  final Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetCertificateArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
