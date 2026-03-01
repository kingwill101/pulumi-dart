// ignore_for_file: unused_element, unnecessary_cast

/// Details for an outcome with a SUCCESS outcome summary. LINT.IfChange
class SuccessDetailResponse {
  /// If a native process other than the app crashed.
  final bool otherNativeCrash;

  /// Creates a new [SuccessDetailResponse].
  /// [otherNativeCrash] If a native process other than the app crashed.
  SuccessDetailResponse({required this.otherNativeCrash});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'otherNativeCrash': otherNativeCrash};
  }

  factory SuccessDetailResponse.fromMap(Map<String, dynamic> map) {
    return SuccessDetailResponse(
      otherNativeCrash: map['otherNativeCrash'] as bool,
    );
  }
}
