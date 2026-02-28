// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1beta4_get_ssl_cert_sqladmin_v1beta4_args_doc}
/// Arguments for getSslCert.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_get_ssl_cert_sqladmin_v1beta4_args_doc}
class GetSslCertSqladminV1beta4Args {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sha1Fingerprint;

  /// Creates a new [GetSslCertSqladminV1beta4Args].
  /// [instance] Required.
  /// [project] Optional.
  /// [sha1Fingerprint] Required.
  GetSslCertSqladminV1beta4Args({
    required String instance,
    String? project,
    required String sha1Fingerprint,
  })  : instance = pulumi.Input.asInput<String>(instance),
        project = pulumi.Input.asOptionalInput<String>(project),
        sha1Fingerprint = pulumi.Input.asInput<String>(sha1Fingerprint);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sha1Fingerprint'] = sha1Fingerprint;
    return map;
  }

  factory GetSslCertSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return GetSslCertSqladminV1beta4Args(
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
    );
  }
}
