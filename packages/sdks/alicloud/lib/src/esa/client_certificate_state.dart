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
    pulumi.Output<String>? clientCertId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? csr,
    pulumi.Output<String>? pkeyType,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? validityDays,
  }) :
      clientCertId = pulumi.Input.asOptionalInput<String>(clientCertId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      csr = pulumi.Input.asOptionalInput<String>(csr),
      pkeyType = pulumi.Input.asOptionalInput<String>(pkeyType),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status),
      validityDays = pulumi.Input.asOptionalInput<String>(validityDays);

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
      clientCertId: map['clientCertId'] == null ? null : pulumi.Output.create<String>(map['clientCertId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      csr: map['csr'] == null ? null : pulumi.Output.create<String>(map['csr'] as String),
      pkeyType: map['pkeyType'] == null ? null : pulumi.Output.create<String>(map['pkeyType'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      validityDays: map['validityDays'] == null ? null : pulumi.Output.create<String>(map['validityDays'] as String),
    );
  }
}

