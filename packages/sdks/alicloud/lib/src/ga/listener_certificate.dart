// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerCertificate {
  /// The id of the certificate.
  final pulumi.Input<String>? id;

  /// Creates a new [ListenerCertificate].
  /// [id] The id of the certificate.
  const ListenerCertificate({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ListenerCertificate.fromMap(Map<String, dynamic> map) {
    return ListenerCertificate(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

