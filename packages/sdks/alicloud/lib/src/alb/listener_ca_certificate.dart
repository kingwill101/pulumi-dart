// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerCaCertificate {
  /// The ID of the certificate. Currently, only server certificates are supported.
  final pulumi.Input<String>? certificateId;

  /// Creates a new [ListenerCaCertificate].
  /// [certificateId] The ID of the certificate. Currently, only server certificates are supported.
  ListenerCaCertificate({
    this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
    };
  }

  factory ListenerCaCertificate.fromMap(Map<String, dynamic> map) {
    return ListenerCaCertificate(
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as String).input(),
    );
  }
}

