// ignore_for_file: unused_element, unnecessary_cast

/// Details for an outcome with a SKIPPED outcome summary.
class SkippedDetail {
  /// If the App doesn't support the specific API level.
  final bool? incompatibleAppVersion;

  /// If the App doesn't run on the specific architecture, for example, x86.
  final bool? incompatibleArchitecture;

  /// If the requested OS version doesn't run on the specific device model.
  final bool? incompatibleDevice;

  SkippedDetail({
    this.incompatibleAppVersion,
    this.incompatibleArchitecture,
    this.incompatibleDevice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final incompatibleAppVersionValue = incompatibleAppVersion;
    if (incompatibleAppVersionValue != null) {
      map['incompatibleAppVersion'] = incompatibleAppVersionValue;
    }
    final incompatibleArchitectureValue = incompatibleArchitecture;
    if (incompatibleArchitectureValue != null) {
      map['incompatibleArchitecture'] = incompatibleArchitectureValue;
    }
    final incompatibleDeviceValue = incompatibleDevice;
    if (incompatibleDeviceValue != null) {
      map['incompatibleDevice'] = incompatibleDeviceValue;
    }
    return map;
  }

  factory SkippedDetail.fromMap(Map<String, dynamic> map) {
    return SkippedDetail(
      incompatibleAppVersion: map['incompatibleAppVersion'] == null
          ? null
          : map['incompatibleAppVersion'] as bool,
      incompatibleArchitecture: map['incompatibleArchitecture'] == null
          ? null
          : map['incompatibleArchitecture'] as bool,
      incompatibleDevice: map['incompatibleDevice'] == null
          ? null
          : map['incompatibleDevice'] as bool,
    );
  }
}
