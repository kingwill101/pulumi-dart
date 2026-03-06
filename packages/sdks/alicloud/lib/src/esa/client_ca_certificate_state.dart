// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClientCaCertificate resources.
class ClientCaCertificateState {
  /// Certificate content.
  final pulumi.Input<String>? certificate;
  /// ClientCaCertificate Id
  final pulumi.Input<String>? clientCaCertId;
  /// The certificate name.
  final pulumi.Input<String>? clientCaCertName;
  /// Creation time.
  final pulumi.Input<String>? createTime;
  /// Site Id
  final pulumi.Input<String>? siteId;
  /// Certificate status.
  final pulumi.Input<String>? status;

  /// Creates a new [ClientCaCertificateState].
  /// [certificate] Certificate content.
  /// [clientCaCertId] ClientCaCertificate Id
  /// [clientCaCertName] The certificate name.
  /// [createTime] Creation time.
  /// [siteId] Site Id
  /// [status] Certificate status.
  const ClientCaCertificateState({
    this.certificate,
    this.clientCaCertId,
    this.clientCaCertName,
    this.createTime,
    this.siteId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'clientCaCertId': ?clientCaCertId,
      'clientCaCertName': ?clientCaCertName,
      'createTime': ?createTime,
      'siteId': ?siteId,
      'status': ?status,
    };
  }

  factory ClientCaCertificateState.fromMap(Map<String, dynamic> map) {
    return ClientCaCertificateState(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCaCertId: (() { final guardedValue = map['clientCaCertId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCaCertName: (() { final guardedValue = map['clientCaCertName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

