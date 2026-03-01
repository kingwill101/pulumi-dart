// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVReEnlightenment {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVReEnlightenment].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVReEnlightenment({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVReEnlightenment.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVReEnlightenment(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

