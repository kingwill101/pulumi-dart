// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceVhostUserQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesDiskSourceVhostUserQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesDiskSourceVhostUserQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesDiskSourceVhostUserQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

