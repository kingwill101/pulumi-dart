// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// Name of the ssl_certificate
  final pulumi.Input<String> name;
  /// partition of the ltm ssl_certificate
  final pulumi.Input<String> partition;

  /// Creates a new [GetCertificateArgs].
  /// [name] Name of the ssl_certificate
  /// [partition] partition of the ltm ssl_certificate
  GetCertificateArgs({
    required String name,
    required String partition,
  }) :
      name = pulumi.Input.asInput<String>(name),
      partition = pulumi.Input.asInput<String>(partition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'partition': partition,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      name: map['name'] as String,
      partition: map['partition'] as String,
    );
  }
}

