// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesNetAdmin {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesNetAdmin].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesNetAdmin({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesNetAdmin.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesNetAdmin(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

