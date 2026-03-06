// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersListenerCertificate {
  /// The ID of the Listener.
  final pulumi.Input<String> id;
  /// The type of the certificate.
  final pulumi.Input<String> type;

  /// Creates a new [GetListenersListenerCertificate].
  /// [id] The ID of the Listener.
  /// [type] The type of the certificate.
  const GetListenersListenerCertificate({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory GetListenersListenerCertificate.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerCertificate(
      id: pulumi.Input.fromValue(map['id'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

