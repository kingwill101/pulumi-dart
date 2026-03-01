// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSmartcardPassthroughQemuvdAgentMouse {
  /// Sets the mode for the mouse interaction through the QEMU guest agent.
  final String mode;

  /// Creates a new [DomainDevicesSmartcardPassthroughQemuvdAgentMouse].
  /// [mode] Sets the mode for the mouse interaction through the QEMU guest agent.
  DomainDevicesSmartcardPassthroughQemuvdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesSmartcardPassthroughQemuvdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughQemuvdAgentMouse(
      mode: map['mode'] as String,
    );
  }
}

