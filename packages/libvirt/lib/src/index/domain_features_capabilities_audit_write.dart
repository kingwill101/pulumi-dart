// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesCapabilitiesAuditWrite {
  /// Sets the state of the capability to wake from an alarm.
  final String? state;

  /// Creates a new [DomainFeaturesCapabilitiesAuditWrite].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesAuditWrite({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesAuditWrite.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesAuditWrite(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

