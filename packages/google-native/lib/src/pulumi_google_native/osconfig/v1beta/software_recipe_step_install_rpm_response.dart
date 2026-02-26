// ignore_for_file: unused_element, unnecessary_cast

/// Installs an rpm file via the rpm utility.
class SoftwareRecipeStepInstallRpmResponse {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  SoftwareRecipeStepInstallRpmResponse({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    return map;
  }

  factory SoftwareRecipeStepInstallRpmResponse.fromMap(
      Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallRpmResponse(
      artifactId: map['artifactId'] as String,
    );
  }
}
