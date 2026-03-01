// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_serial_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_serial_source_qemuvd_agent_mouse.dart';

class DomainDevicesSerialSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesSerialSourceQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesSerialSourceQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesSerialSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesSerialSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesSerialSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesSerialSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesSerialSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

