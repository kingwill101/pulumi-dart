// ignore_for_file: unused_element, unnecessary_cast


class FeaturesCognitiveAccount {
  final bool? purgeSoftDeleteOnDestroy;

  /// Creates a new [FeaturesCognitiveAccount].
  /// [purgeSoftDeleteOnDestroy] Optional.
  FeaturesCognitiveAccount({
    this.purgeSoftDeleteOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
    };
  }

  factory FeaturesCognitiveAccount.fromMap(Map<String, dynamic> map) {
    return FeaturesCognitiveAccount(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : map['purgeSoftDeleteOnDestroy'] as bool,
    );
  }
}

