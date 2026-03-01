// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesDacReadSearch {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesDacReadSearch].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesDacReadSearch({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesDacReadSearch.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesDacReadSearch(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

