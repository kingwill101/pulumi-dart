// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesKvmPollControl {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesKvmPollControl].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesKvmPollControl({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesKvmPollControl.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesKvmPollControl(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

