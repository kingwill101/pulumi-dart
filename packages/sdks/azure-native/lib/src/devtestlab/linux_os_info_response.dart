// ignore_for_file: unused_element, unnecessary_cast


/// Information about a Linux OS.
class LinuxOsInfoResponse {
  /// The state of the Linux OS (i.e. NonDeprovisioned, DeprovisionRequested, DeprovisionApplied).
  final String? linuxOsState;

  /// Creates a new [LinuxOsInfoResponse].
  /// [linuxOsState] The state of the Linux OS (i.e. NonDeprovisioned, DeprovisionRequested, DeprovisionApplied).
  LinuxOsInfoResponse({
    this.linuxOsState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOsState': ?linuxOsState,
    };
  }

  factory LinuxOsInfoResponse.fromMap(Map<String, dynamic> map) {
    return LinuxOsInfoResponse(
      linuxOsState: map['linuxOsState'] == null ? null : map['linuxOsState'] as String,
    );
  }
}

