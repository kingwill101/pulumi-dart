// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_vhost_user_chardev_pty_sec_label.dart';

class DomainDevicesInterfaceSourceVhostUserChardevPty {
  /// Sets the path for the PTY source in the EGD backend.
  final String path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final List<DomainDevicesInterfaceSourceVhostUserChardevPtySecLabel>? secLabels;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevPty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesInterfaceSourceVhostUserChardevPty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesInterfaceSourceVhostUserChardevPtySecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevPty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevPty(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterfaceSourceVhostUserChardevPtySecLabel>(map['secLabels'], (value) => DomainDevicesInterfaceSourceVhostUserChardevPtySecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

