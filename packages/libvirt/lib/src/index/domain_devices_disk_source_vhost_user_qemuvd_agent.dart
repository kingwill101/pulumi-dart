// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_source_vhost_user_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_source_vhost_user_qemuvd_agent_mouse.dart';

class DomainDevicesDiskSourceVhostUserQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesDiskSourceVhostUserQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesDiskSourceVhostUserQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesDiskSourceVhostUserQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskSourceVhostUserQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesDiskSourceVhostUserQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesDiskSourceVhostUserQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesDiskSourceVhostUserQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

