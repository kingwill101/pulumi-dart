// ignore_for_file: unused_element, unnecessary_cast

/// Installs an rpm file via the rpm utility.
class SoftwareRecipeStepInstallRpm {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  SoftwareRecipeStepInstallRpm({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    return map;
  }

  factory SoftwareRecipeStepInstallRpm.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallRpm(
      artifactId: map['artifactId'] as String,
    );
  }
}
