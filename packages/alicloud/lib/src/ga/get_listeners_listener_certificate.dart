// ignore_for_file: unused_element, unnecessary_cast


class GetListenersListenerCertificate {
  /// The ID of the Listener.
  final String id;
  /// The type of the certificate.
  final String type;

  /// Creates a new [GetListenersListenerCertificate].
  /// [id] The ID of the Listener.
  /// [type] The type of the certificate.
  GetListenersListenerCertificate({
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
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}

