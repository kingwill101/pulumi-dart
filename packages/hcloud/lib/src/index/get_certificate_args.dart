// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// ID of the certificate.
  final pulumi.Input<int>? id;
  /// Name of the certificate.
  final pulumi.Input<String>? name;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetCertificateArgs].
  /// [id] ID of the certificate.
  /// [name] Name of the certificate.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetCertificateArgs({
    int? id,
    String? name,
    String? withSelector,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'withSelector': ?withSelector,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      id: map['id'] == null ? null : map['id'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

