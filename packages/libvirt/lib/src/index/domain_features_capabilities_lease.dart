// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesLease {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesLease].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesLease({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesLease.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesLease(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

