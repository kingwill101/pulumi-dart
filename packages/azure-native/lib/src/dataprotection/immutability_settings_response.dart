// ignore_for_file: unused_element, unnecessary_cast


/// Immutability Settings at vault level
class ImmutabilitySettingsResponse {
  /// Immutability state
  final String? state;

  /// Creates a new [ImmutabilitySettingsResponse].
  /// [state] Immutability state
  ImmutabilitySettingsResponse({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory ImmutabilitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return ImmutabilitySettingsResponse(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

