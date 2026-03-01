// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVVpIndex {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVVpIndex].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVVpIndex({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVVpIndex.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVVpIndex(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

