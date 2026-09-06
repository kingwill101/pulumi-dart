// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a Linux OS.
class LinuxOsInfoResponse {
  /// The state of the Linux OS (i.e. NonDeprovisioned, DeprovisionRequested, DeprovisionApplied).
  final pulumi.Input<String?>? linuxOsState;

  /// Creates a new [LinuxOsInfoResponse].
  /// [linuxOsState] The state of the Linux OS (i.e. NonDeprovisioned, DeprovisionRequested, DeprovisionApplied).
  const LinuxOsInfoResponse({
    this.linuxOsState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOsState': ?linuxOsState,
    };
  }

  factory LinuxOsInfoResponse.fromMap(Map<String, dynamic> map) {
    return LinuxOsInfoResponse(
      linuxOsState: (() { final guardedValue = map['linuxOsState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
