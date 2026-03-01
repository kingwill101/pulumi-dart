// ignore_for_file: unused_element, unnecessary_cast

/// Installs a deb via dpkg.
class SoftwareRecipeStepInstallDpkg {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Creates a new [SoftwareRecipeStepInstallDpkg].
  /// [artifactId] The id of the relevant artifact in the recipe.
  SoftwareRecipeStepInstallDpkg({required this.artifactId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactId': artifactId};
  }

  factory SoftwareRecipeStepInstallDpkg.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallDpkg(
      artifactId: map['artifactId'] as String,
    );
  }
}
