// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesRecipeInstallStepRpmInstallation {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  GuestPoliciesRecipeInstallStepRpmInstallation({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    return map;
  }

  factory GuestPoliciesRecipeInstallStepRpmInstallation.fromMap(
      Map<String, dynamic> map) {
    return GuestPoliciesRecipeInstallStepRpmInstallation(
      artifactId: map['artifactId'] as String,
    );
  }
}
