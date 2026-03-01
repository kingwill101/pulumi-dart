// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysAdmin {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysAdmin].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysAdmin({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysAdmin.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysAdmin(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

