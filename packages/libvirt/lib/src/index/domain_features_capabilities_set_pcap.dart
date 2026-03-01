// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSetPCap {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSetPCap].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSetPCap({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSetPCap.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSetPCap(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

