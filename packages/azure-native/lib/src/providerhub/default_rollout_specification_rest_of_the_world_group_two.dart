// ignore_for_file: unused_element, unnecessary_cast


/// The rest of the world group two region configuration.
class DefaultRolloutSpecificationRestOfTheWorldGroupTwo {
  final List<String>? regions;
  /// The wait duration.
  final String? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationRestOfTheWorldGroupTwo].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  DefaultRolloutSpecificationRestOfTheWorldGroupTwo({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationRestOfTheWorldGroupTwo.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationRestOfTheWorldGroupTwo(
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      waitDuration: map['waitDuration'] == null ? null : map['waitDuration'] as String,
    );
  }
}

