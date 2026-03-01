// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVFrequencies {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVFrequencies].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVFrequencies({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVFrequencies.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVFrequencies(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

