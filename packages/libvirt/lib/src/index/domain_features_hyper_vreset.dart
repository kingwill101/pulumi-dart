// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVReset {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVReset].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVReset({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVReset.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVReset(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

