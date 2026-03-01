// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_channel_target_guest_fwd.dart';
import 'domain_devices_channel_target_virt_io.dart';
import 'domain_devices_channel_target_xen.dart';

class DomainDevicesChannelTarget {
  /// This field configures the guest forwarding settings for the channel target.
  final DomainDevicesChannelTargetGuestFwd? guestFwd;
  /// This field defines the target configuration for the VirtIO channel.
  final DomainDevicesChannelTargetVirtIo? virtIo;
  /// This field specifies the channel target configuration for Xen.
  final DomainDevicesChannelTargetXen? xen;

  /// Creates a new [DomainDevicesChannelTarget].
  /// [guestFwd] This field configures the guest forwarding settings for the channel target.
  /// [virtIo] This field defines the target configuration for the VirtIO channel.
  /// [xen] This field specifies the channel target configuration for Xen.
  DomainDevicesChannelTarget({
    this.guestFwd,
    this.virtIo,
    this.xen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestFwd': ?guestFwd == null ? null : guestFwd!.toMap(),
      'virtIo': ?virtIo == null ? null : virtIo!.toMap(),
      'xen': ?xen == null ? null : xen!.toMap(),
    };
  }

  factory DomainDevicesChannelTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelTarget(
      guestFwd: map['guestFwd'] == null ? null : DomainDevicesChannelTargetGuestFwd.fromMap((map['guestFwd'] as Map).cast<String, dynamic>()),
      virtIo: map['virtIo'] == null ? null : DomainDevicesChannelTargetVirtIo.fromMap((map['virtIo'] as Map).cast<String, dynamic>()),
      xen: map['xen'] == null ? null : DomainDevicesChannelTargetXen.fromMap((map['xen'] as Map).cast<String, dynamic>()),
    );
  }
}

