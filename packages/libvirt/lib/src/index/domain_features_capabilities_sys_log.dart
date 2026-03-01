// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesSysLog {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysLog].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysLog({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysLog.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysLog(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

