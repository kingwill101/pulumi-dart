// ignore_for_file: unused_element, unnecessary_cast


/// Immutability Settings at vault level
class ImmutabilitySettings {
  /// Immutability state
  final String? state;

  /// Creates a new [ImmutabilitySettings].
  /// [state] Immutability state
  ImmutabilitySettings({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory ImmutabilitySettings.fromMap(Map<String, dynamic> map) {
    return ImmutabilitySettings(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

