// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_parallel_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_parallel_source_qemuvd_agent_mouse.dart';

class DomainDevicesParallelSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesParallelSourceQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesParallelSourceQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesParallelSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesParallelSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesParallelSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesParallelSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesParallelSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

