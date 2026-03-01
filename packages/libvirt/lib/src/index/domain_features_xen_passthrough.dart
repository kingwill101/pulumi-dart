// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesXenPassthrough {
  /// Sets the mode of the passthrough feature, which affects how devices are exposed to the guest.
  final String? mode;
  /// Configures the state of the passthrough feature, indicating its activation status.
  final String? state;

  /// Creates a new [DomainFeaturesXenPassthrough].
  /// [mode] Sets the mode of the passthrough feature, which affects how devices are exposed to the guest.
  /// [state] Configures the state of the passthrough feature, indicating its activation status.
  DomainFeaturesXenPassthrough({
    this.mode,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'state': ?state,
    };
  }

  factory DomainFeaturesXenPassthrough.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesXenPassthrough(
      mode: map['mode'] == null ? null : map['mode'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

