// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesMkNod {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesMkNod].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesMkNod({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesMkNod.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesMkNod(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

