// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesMacOverride {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesMacOverride].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesMacOverride({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesMacOverride.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesMacOverride(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

