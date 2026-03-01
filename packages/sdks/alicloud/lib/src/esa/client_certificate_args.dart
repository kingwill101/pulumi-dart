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
    pulumi.Output<String>? csr,
    pulumi.Output<String>? pkeyType,
    required pulumi.Output<String> siteId,
    pulumi.Output<String>? status,
    required pulumi.Output<String> validityDays,
  }) :
      csr = pulumi.Input.asOptionalInput<String>(csr),
      pkeyType = pulumi.Input.asOptionalInput<String>(pkeyType),
      siteId = pulumi.Input.asInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status),
      validityDays = pulumi.Input.asInput<String>(validityDays);

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
      csr: map['csr'] == null ? null : pulumi.Output.create<String>(map['csr'] as String),
      pkeyType: map['pkeyType'] == null ? null : pulumi.Output.create<String>(map['pkeyType'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      validityDays: pulumi.Output.create<String>(map['validityDays'] as String),
    );
  }
}

