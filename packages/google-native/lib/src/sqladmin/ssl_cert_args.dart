// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_ssl_cert_args_doc}
/// The set of arguments for SslCert.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_ssl_cert_args_doc}
class SslCertArgs {
  /// User supplied name. Must be a distinct name from the other certificates for this instance.
  final pulumi.Input<String>? commonName;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [SslCertArgs].
  /// [commonName] User supplied name. Must be a distinct name from the other certificates for this instance.
  /// [instance] Required.
  /// [project] Optional.
  SslCertArgs({
    String? commonName,
    required String instance,
    String? project,
  })  : commonName = pulumi.Input.asOptionalInput<String>(commonName),
        instance = pulumi.Input.asInput<String>(instance),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      commonName:
          map['commonName'] == null ? null : map['commonName'] as String,
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
