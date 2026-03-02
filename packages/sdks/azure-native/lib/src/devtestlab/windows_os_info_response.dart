// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a Windows OS.
class WindowsOsInfoResponse {
  /// The state of the Windows OS (i.e. NonSysprepped, SysprepRequested, SysprepApplied).
  final pulumi.Input<String>? windowsOsState;

  /// Creates a new [WindowsOsInfoResponse].
  /// [windowsOsState] The state of the Windows OS (i.e. NonSysprepped, SysprepRequested, SysprepApplied).
  WindowsOsInfoResponse({
    this.windowsOsState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowsOsState': ?windowsOsState,
    };
  }

  factory WindowsOsInfoResponse.fromMap(Map<String, dynamic> map) {
    return WindowsOsInfoResponse(
      windowsOsState: map['windowsOsState'] == null ? null : (map['windowsOsState']! as String).input(),
    );
  }
}

