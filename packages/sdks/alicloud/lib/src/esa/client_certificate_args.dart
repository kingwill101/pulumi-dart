// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_client_certificate_client_certificate_args_doc}
/// The set of arguments for ClientCertificate.
/// {@endtemplate}
/// {@macro pulumi_esa_client_certificate_client_certificate_args_doc}
class ClientCertificateArgs {
  /// Certificate signing request content.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? csr;
  /// The private key algorithm type.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? pkeyType;
  /// Site Id
  final pulumi.Input<String> siteId;
  /// The certificate status. Valid values: `revoked`, `active`.
  final pulumi.Input<String>? status;
  /// Certificate validity period.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String> validityDays;

  /// Creates a new [ClientCertificateArgs].
  /// [csr] Certificate signing request content.
  /// [pkeyType] The private key algorithm type.
  /// [siteId] Site Id
  /// [status] The certificate status. Valid values: `revoked`, `active`.
  /// [validityDays] Certificate validity period.
  ClientCertificateArgs({
    this.csr,
    this.pkeyType,
    required this.siteId,
    this.status,
    required this.validityDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csr': ?csr,
      'pkeyType': ?pkeyType,
      'siteId': siteId,
      'status': ?status,
      'validityDays': validityDays,
    };
  }

  factory ClientCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ClientCertificateArgs(
      csr: map['csr'] == null ? null : (map['csr'] as String).input(),
      pkeyType: map['pkeyType'] == null ? null : (map['pkeyType'] as String).input(),
      siteId: (map['siteId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      validityDays: (map['validityDays'] as String).input(),
    );
  }
}

