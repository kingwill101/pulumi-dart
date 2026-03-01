// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_source_vhost_user_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_mirror_backing_store_source_vhost_user_qemuvd_agent_mouse.dart';

class DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

