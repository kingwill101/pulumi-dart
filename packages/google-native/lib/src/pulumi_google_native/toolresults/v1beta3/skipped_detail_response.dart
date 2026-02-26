// ignore_for_file: unused_element, unnecessary_cast

/// Details for an outcome with a SKIPPED outcome summary.
class SkippedDetailResponse {
  /// If the App doesn't support the specific API level.
  final bool incompatibleAppVersion;

  /// If the App doesn't run on the specific architecture, for example, x86.
  final bool incompatibleArchitecture;

  /// If the requested OS version doesn't run on the specific device model.
  final bool incompatibleDevice;

  SkippedDetailResponse({
    required this.incompatibleAppVersion,
    required this.incompatibleArchitecture,
    required this.incompatibleDevice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['incompatibleAppVersion'] = incompatibleAppVersion;
    map['incompatibleArchitecture'] = incompatibleArchitecture;
    map['incompatibleDevice'] = incompatibleDevice;
    return map;
  }

  factory SkippedDetailResponse.fromMap(Map<String, dynamic> map) {
    return SkippedDetailResponse(
      incompatibleAppVersion: map['incompatibleAppVersion'] as bool,
      incompatibleArchitecture: map['incompatibleArchitecture'] as bool,
      incompatibleDevice: map['incompatibleDevice'] as bool,
    );
  }
}
