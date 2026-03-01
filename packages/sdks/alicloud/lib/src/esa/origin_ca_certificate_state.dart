// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OriginCaCertificate resources.
class OriginCaCertificateState {
  /// Certificate content.
  final pulumi.Input<String>? certificate;
  /// Creation time.
  final pulumi.Input<String>? createTime;
  /// The certificate name.
  final pulumi.Input<String>? name;
  /// OriginCaCertificate Id
  final pulumi.Input<String>? originCaCertificateId;
  /// Site Id
  final pulumi.Input<String>? siteId;
  /// Certificate status.
  final pulumi.Input<String>? status;

  /// Creates a new [OriginCaCertificateState].
  /// [certificate] Certificate content.
  /// [createTime] Creation time.
  /// [name] The certificate name.
  /// [originCaCertificateId] OriginCaCertificate Id
  /// [siteId] Site Id
  /// [status] Certificate status.
  OriginCaCertificateState({
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? originCaCertificateId,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? status,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      originCaCertificateId = pulumi.Input.asOptionalInput<String>(originCaCertificateId),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'createTime': ?createTime,
      'name': ?name,
      'originCaCertificateId': ?originCaCertificateId,
      'siteId': ?siteId,
      'status': ?status,
    };
  }

  factory OriginCaCertificateState.fromMap(Map<String, dynamic> map) {
    return OriginCaCertificateState(
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      originCaCertificateId: map['originCaCertificateId'] == null ? null : pulumi.Output.create<String>(map['originCaCertificateId'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

