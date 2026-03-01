// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_get_ssl_cert_args_doc}
/// Arguments for getSslCert.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_get_ssl_cert_args_doc}
class GetSslCertArgs {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sha1Fingerprint;

  /// Creates a new [GetSslCertArgs].
  /// [instance] Required.
  /// [project] Optional.
  /// [sha1Fingerprint] Required.
  GetSslCertArgs({
    required String instance,
    String? project,
    required String sha1Fingerprint,
  }) : instance = pulumi.Input.asInput<String>(instance),
       project = pulumi.Input.asOptionalInput<String>(project),
       sha1Fingerprint = pulumi.Input.asInput<String>(sha1Fingerprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'sha1Fingerprint': sha1Fingerprint,
    };
  }

  factory GetSslCertArgs.fromMap(Map<String, dynamic> map) {
    return GetSslCertArgs(
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
    );
  }
}
