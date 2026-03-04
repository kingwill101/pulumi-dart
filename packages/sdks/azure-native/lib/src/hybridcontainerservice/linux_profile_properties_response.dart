// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_profile_properties_response_ssh.dart';

/// LinuxProfile - Profile for Linux VMs in the container service cluster.
class LinuxProfilePropertiesResponse {
  /// AdminUsername - The administrator username to use for Linux VMs.
  final pulumi.Input<String>? adminUsername;

  /// SSH - SSH configuration for Linux-based VMs running on Azure.
  final pulumi.Input<LinuxProfilePropertiesResponseSsh>? ssh;

  /// Creates a new [LinuxProfilePropertiesResponse].
  /// [adminUsername] AdminUsername - The administrator username to use for Linux VMs.
  /// [ssh] SSH - SSH configuration for Linux-based VMs running on Azure.
  LinuxProfilePropertiesResponse({this.adminUsername, this.ssh});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'ssh':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxProfilePropertiesResponseSsh,
            Map<String, dynamic>
          >(ssh, (value) => value.toMap()),
    };
  }

  factory LinuxProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LinuxProfilePropertiesResponse(
      adminUsername: (() {
        final guardedValue = map['adminUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ssh: (() {
        final guardedValue = map['ssh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxProfilePropertiesResponseSsh.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
