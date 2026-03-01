// ignore_for_file: unused_element, unnecessary_cast


class FeaturesAppConfiguration {
  final bool? purgeSoftDeleteOnDestroy;
  final bool? recoverSoftDeleted;

  /// Creates a new [FeaturesAppConfiguration].
  /// [purgeSoftDeleteOnDestroy] Optional.
  /// [recoverSoftDeleted] Optional.
  FeaturesAppConfiguration({
    this.purgeSoftDeleteOnDestroy,
    this.recoverSoftDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeleteOnDestroy': ?purgeSoftDeleteOnDestroy,
      'recoverSoftDeleted': ?recoverSoftDeleted,
    };
  }

  factory FeaturesAppConfiguration.fromMap(Map<String, dynamic> map) {
    return FeaturesAppConfiguration(
      purgeSoftDeleteOnDestroy: map['purgeSoftDeleteOnDestroy'] == null ? null : map['purgeSoftDeleteOnDestroy'] as bool,
      recoverSoftDeleted: map['recoverSoftDeleted'] == null ? null : map['recoverSoftDeleted'] as bool,
    );
  }
}

