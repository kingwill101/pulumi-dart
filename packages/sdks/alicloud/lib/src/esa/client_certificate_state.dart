// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClientCertificate resources.
class ClientCertificateState {
  /// ClientCertificate Id
  final pulumi.Input<String>? clientCertId;
  /// The time when the certificate was created.
  final pulumi.Input<String>? createTime;
  /// Certificate signing request content.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? csr;
  /// The private key algorithm type.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? pkeyType;
  /// Site Id
  final pulumi.Input<String>? siteId;
  /// The certificate status. Valid values: `revoked`, `active`.
  final pulumi.Input<String>? status;
  /// Certificate validity period.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? validityDays;

  /// Creates a new [ClientCertificateState].
  /// [clientCertId] ClientCertificate Id
  /// [createTime] The time when the certificate was created.
  /// [csr] Certificate signing request content.
  /// [pkeyType] The private key algorithm type.
  /// [siteId] Site Id
  /// [status] The certificate status. Valid values: `revoked`, `active`.
  /// [validityDays] Certificate validity period.
  ClientCertificateState({
    this.clientCertId,
    this.createTime,
    this.csr,
    this.pkeyType,
    this.siteId,
    this.status,
    this.validityDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertId': ?clientCertId,
      'createTime': ?createTime,
      'csr': ?csr,
      'pkeyType': ?pkeyType,
      'siteId': ?siteId,
      'status': ?status,
      'validityDays': ?validityDays,
    };
  }

  factory ClientCertificateState.fromMap(Map<String, dynamic> map) {
    return ClientCertificateState(
      clientCertId: map['clientCertId'] == null ? null : (map['clientCertId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      csr: map['csr'] == null ? null : (map['csr']! as String).input(),
      pkeyType: map['pkeyType'] == null ? null : (map['pkeyType']! as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      validityDays: map['validityDays'] == null ? null : (map['validityDays']! as String).input(),
    );
  }
}

