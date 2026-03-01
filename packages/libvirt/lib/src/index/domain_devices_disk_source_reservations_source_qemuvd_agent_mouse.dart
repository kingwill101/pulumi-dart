// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

