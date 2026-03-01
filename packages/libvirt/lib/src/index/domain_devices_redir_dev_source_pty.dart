// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_redir_dev_source_pty_sec_label.dart';

class DomainDevicesRedirDevSourcePty {
  /// Sets the path for the PTY source in the EGD backend.
  final String path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final List<DomainDevicesRedirDevSourcePtySecLabel>? secLabels;

  /// Creates a new [DomainDevicesRedirDevSourcePty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesRedirDevSourcePty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesRedirDevSourcePtySecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesRedirDevSourcePty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourcePty(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesRedirDevSourcePtySecLabel>(map['secLabels'], (value) => DomainDevicesRedirDevSourcePtySecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

