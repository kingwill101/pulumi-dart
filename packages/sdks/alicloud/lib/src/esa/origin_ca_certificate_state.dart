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
    this.certificate,
    this.createTime,
    this.name,
    this.originCaCertificateId,
    this.siteId,
    this.status,
  });

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
      certificate: map['certificate'] == null ? null : (map['certificate']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      originCaCertificateId: map['originCaCertificateId'] == null ? null : (map['originCaCertificateId']! as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

