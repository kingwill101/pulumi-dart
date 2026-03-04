// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a Windows OS.
class WindowsOsInfo {
  /// The state of the Windows OS (i.e. NonSysprepped, SysprepRequested, SysprepApplied).
  final pulumi.Input<String>? windowsOsState;

  /// Creates a new [WindowsOsInfo].
  /// [windowsOsState] The state of the Windows OS (i.e. NonSysprepped, SysprepRequested, SysprepApplied).
  WindowsOsInfo({this.windowsOsState});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'windowsOsState': ?windowsOsState};
  }

  factory WindowsOsInfo.fromMap(Map<String, dynamic> map) {
    return WindowsOsInfo(
      windowsOsState: (() {
        final guardedValue = map['windowsOsState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
