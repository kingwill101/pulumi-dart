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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? csr;
  /// The private key algorithm type.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? pkeyType;
  /// Site Id
  final pulumi.Input<String>? siteId;
  /// The certificate status. Valid values: `revoked`, `active`.
  final pulumi.Input<String>? status;
  /// Certificate validity period.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? validityDays;

  /// Creates a new [ClientCertificateState].
  /// [clientCertId] ClientCertificate Id
  /// [createTime] The time when the certificate was created.
  /// [csr] Certificate signing request content.
  /// [pkeyType] The private key algorithm type.
  /// [siteId] Site Id
  /// [status] The certificate status. Valid values: `revoked`, `active`.
  /// [validityDays] Certificate validity period.
  const ClientCertificateState({
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
      clientCertId: (() { final guardedValue = map['clientCertId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pkeyType: (() { final guardedValue = map['pkeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validityDays: (() { final guardedValue = map['validityDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

