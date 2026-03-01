// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesPmu {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesPmu].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesPmu({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesPmu.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesPmu(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

