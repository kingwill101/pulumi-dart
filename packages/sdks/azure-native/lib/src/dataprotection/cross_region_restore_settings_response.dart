// ignore_for_file: unused_element, unnecessary_cast


class CrossRegionRestoreSettingsResponse {
  /// CrossRegionRestore state
  final String? state;

  /// Creates a new [CrossRegionRestoreSettingsResponse].
  /// [state] CrossRegionRestore state
  CrossRegionRestoreSettingsResponse({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory CrossRegionRestoreSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CrossRegionRestoreSettingsResponse(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

