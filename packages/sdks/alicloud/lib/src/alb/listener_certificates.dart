// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerCertificates {
  /// The ID of the certificate. Currently, only server certificates are supported.
  final pulumi.Input<String>? certificateId;

  /// Creates a new [ListenerCertificates].
  /// [certificateId] The ID of the certificate. Currently, only server certificates are supported.
  ListenerCertificates({
    this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
    };
  }

  factory ListenerCertificates.fromMap(Map<String, dynamic> map) {
    return ListenerCertificates(
      certificateId: map['certificateId'] == null ? null : (map['certificateId'] as String).input(),
    );
  }
}

