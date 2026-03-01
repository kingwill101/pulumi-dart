// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVIpi {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVIpi].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVIpi({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVIpi.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVIpi(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

