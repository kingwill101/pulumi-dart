// ignore_for_file: unused_element, unnecessary_cast


/// Information about a Linux OS.
class LinuxOsInfo {
  /// The state of the Linux OS (i.e. NonDeprovisioned, DeprovisionRequested, DeprovisionApplied).
  final String? linuxOsState;

  /// Creates a new [LinuxOsInfo].
  /// [linuxOsState] The state of the Linux OS (i.e. NonDeprovisioned, DeprovisionRequested, DeprovisionApplied).
  LinuxOsInfo({
    this.linuxOsState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOsState': ?linuxOsState,
    };
  }

  factory LinuxOsInfo.fromMap(Map<String, dynamic> map) {
    return LinuxOsInfo(
      linuxOsState: map['linuxOsState'] == null ? null : map['linuxOsState'] as String,
    );
  }
}

