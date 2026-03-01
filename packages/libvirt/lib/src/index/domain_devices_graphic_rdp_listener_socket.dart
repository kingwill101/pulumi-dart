// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicRdpListenerSocket {
  /// Defines the socket's attributes for listener configurations in the Spice protocol.
  final String? socket;

  /// Creates a new [DomainDevicesGraphicRdpListenerSocket].
  /// [socket] Defines the socket's attributes for listener configurations in the Spice protocol.
  DomainDevicesGraphicRdpListenerSocket({
    this.socket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'socket': ?socket,
    };
  }

  factory DomainDevicesGraphicRdpListenerSocket.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdpListenerSocket(
      socket: map['socket'] == null ? null : map['socket'] as String,
    );
  }
}

