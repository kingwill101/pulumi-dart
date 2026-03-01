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
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? clientCaCertId,
    pulumi.Output<String>? clientCaCertName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? status,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      clientCaCertId = pulumi.Input.asOptionalInput<String>(clientCaCertId),
      clientCaCertName = pulumi.Input.asOptionalInput<String>(clientCaCertName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      clientCaCertId: map['clientCaCertId'] == null ? null : pulumi.Output.create<String>(map['clientCaCertId'] as String),
      clientCaCertName: map['clientCaCertName'] == null ? null : pulumi.Output.create<String>(map['clientCaCertName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

