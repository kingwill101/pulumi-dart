// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRngBackendEgdProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final String type;

  /// Creates a new [DomainDevicesRngBackendEgdProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  DomainDevicesRngBackendEgdProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesRngBackendEgdProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdProtocol(
      type: map['type'] as String,
    );
  }
}

