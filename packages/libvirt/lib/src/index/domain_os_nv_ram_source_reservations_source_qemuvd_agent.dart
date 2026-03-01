// ignore_for_file: unused_element, unnecessary_cast

import 'domain_os_nv_ram_source_reservations_source_qemuvd_agent_clip_board.dart';
import 'domain_os_nv_ram_source_reservations_source_qemuvd_agent_mouse.dart';

class DomainOsNvRamSourceReservationsSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse? mouse;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainOsNvRamSourceReservationsSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainOsNvRamSourceReservationsSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainOsNvRamSourceReservationsSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

