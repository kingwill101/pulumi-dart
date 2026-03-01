// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesChannelSourceQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesChannelSourceQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesChannelSourceQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesChannelSourceQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourceQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

