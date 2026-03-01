// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysTtyCnofig {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysTtyCnofig].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysTtyCnofig({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysTtyCnofig.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysTtyCnofig(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

