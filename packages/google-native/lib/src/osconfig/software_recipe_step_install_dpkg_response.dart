// ignore_for_file: unused_element, unnecessary_cast

/// Installs a deb via dpkg.
class SoftwareRecipeStepInstallDpkgResponse {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Creates a new [SoftwareRecipeStepInstallDpkgResponse].
  /// [artifactId] The id of the relevant artifact in the recipe.
  SoftwareRecipeStepInstallDpkgResponse({required this.artifactId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactId': artifactId};
  }

  factory SoftwareRecipeStepInstallDpkgResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SoftwareRecipeStepInstallDpkgResponse(
      artifactId: map['artifactId'] as String,
    );
  }
}
