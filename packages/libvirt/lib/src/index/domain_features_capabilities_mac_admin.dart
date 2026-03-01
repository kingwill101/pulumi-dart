// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesMacAdmin {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesMacAdmin].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesMacAdmin({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesMacAdmin.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesMacAdmin(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

