// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_ssl_cert_ssl_cert_args_doc}
/// The set of arguments for SslCert.
/// {@endtemplate}
/// {@macro pulumi_sql_ssl_cert_ssl_cert_args_doc}
class SslCertArgs {
  /// The common name to be used in the certificate to identify the
  /// client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a new resource to be created.
  final pulumi.Input<String> commonName;
  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  final pulumi.Input<String> instance;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [SslCertArgs].
  /// [commonName] The common name to be used in the certificate to identify the
  /// [instance] The name of the Cloud SQL instance. Changing this
  /// [project] The ID of the project in which the resource belongs. If it
  SslCertArgs({
    required String commonName,
    required String instance,
    String? project,
  }) :
      commonName = pulumi.Input.asInput<String>(commonName),
      instance = pulumi.Input.asInput<String>(instance),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
      'instance': instance,
      'project': ?project,
    };
  }

  factory SslCertArgs.fromMap(Map<String, dynamic> map) {
    return SslCertArgs(
      commonName: map['commonName'] as String,
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

