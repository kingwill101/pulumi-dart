// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesMachineLearning {
  final bool? purgeSoftDeletedWorkspaceOnDestroy;

  /// Creates a new [ProviderFeaturesMachineLearning].
  /// [purgeSoftDeletedWorkspaceOnDestroy] Optional.
  ProviderFeaturesMachineLearning({
    this.purgeSoftDeletedWorkspaceOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purgeSoftDeletedWorkspaceOnDestroy': ?purgeSoftDeletedWorkspaceOnDestroy,
    };
  }

  factory ProviderFeaturesMachineLearning.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesMachineLearning(
      purgeSoftDeletedWorkspaceOnDestroy: map['purgeSoftDeletedWorkspaceOnDestroy'] == null ? null : map['purgeSoftDeletedWorkspaceOnDestroy'] as bool,
    );
  }
}

