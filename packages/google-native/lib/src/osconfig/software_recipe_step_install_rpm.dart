// ignore_for_file: unused_element, unnecessary_cast

/// Installs an rpm file via the rpm utility.
class SoftwareRecipeStepInstallRpm {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Creates a new [SoftwareRecipeStepInstallRpm].
  /// [artifactId] The id of the relevant artifact in the recipe.
  SoftwareRecipeStepInstallRpm({required this.artifactId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactId': artifactId};
  }

  factory SoftwareRecipeStepInstallRpm.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallRpm(
      artifactId: map['artifactId'] as String,
    );
  }
}
