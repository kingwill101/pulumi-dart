// ignore_for_file: unused_element, unnecessary_cast

/// Details for an outcome with a SUCCESS outcome summary. LINT.IfChange
class SuccessDetail {
  /// If a native process other than the app crashed.
  final bool? otherNativeCrash;

  /// Creates a new [SuccessDetail].
  /// [otherNativeCrash] If a native process other than the app crashed.
  SuccessDetail({
    this.otherNativeCrash,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final otherNativeCrashValue = otherNativeCrash;
    if (otherNativeCrashValue != null) {
      map['otherNativeCrash'] = otherNativeCrashValue;
    }
    return map;
  }

  factory SuccessDetail.fromMap(Map<String, dynamic> map) {
    return SuccessDetail(
      otherNativeCrash: map['otherNativeCrash'] == null
          ? null
          : map['otherNativeCrash'] as bool,
    );
  }
}
