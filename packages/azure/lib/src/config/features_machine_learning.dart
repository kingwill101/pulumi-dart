// ignore_for_file: unused_element, unnecessary_cast


class FeaturesMachineLearning {
  final bool? purgeSoftDeletedWorkspaceOnDestroy;

  /// Creates a new [FeaturesMachineLearning].
  /// [purgeSoftDeletedWorkspaceOnDestroy] Optional.
  FeaturesMachineLearning({
    this.purgeSoftDeletedWorkspaceOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeletedWorkspaceOnDestroy': ?purgeSoftDeletedWorkspaceOnDestroy,
    };
  }

  factory FeaturesMachineLearning.fromMap(Map<String, dynamic> map) {
    return FeaturesMachineLearning(
      purgeSoftDeletedWorkspaceOnDestroy: map['purgeSoftDeletedWorkspaceOnDestroy'] == null ? null : map['purgeSoftDeletedWorkspaceOnDestroy'] as bool,
    );
  }
}

