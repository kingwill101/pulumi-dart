// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// The name of the certificate.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateArgs].
  /// [name] The name of the certificate.
  /// [project] The project in which the resource belongs. If it
  GetCertificateArgs({required String name, String? project})
    : name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'project': ?project};
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
