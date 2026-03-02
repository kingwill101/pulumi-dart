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
  ClientCaCertificateState({
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
      certificate: map['certificate'] == null ? null : (map['certificate']! as String).input(),
      clientCaCertId: map['clientCaCertId'] == null ? null : (map['clientCaCertId']! as String).input(),
      clientCaCertName: map['clientCaCertName'] == null ? null : (map['clientCaCertName']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

