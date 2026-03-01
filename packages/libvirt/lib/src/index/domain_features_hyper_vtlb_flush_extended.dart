// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVTlbFlushExtended {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVTlbFlushExtended].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVTlbFlushExtended({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVTlbFlushExtended.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVTlbFlushExtended(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

