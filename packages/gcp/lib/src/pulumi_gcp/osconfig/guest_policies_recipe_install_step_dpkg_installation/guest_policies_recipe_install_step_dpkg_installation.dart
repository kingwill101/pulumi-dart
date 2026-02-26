// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesRecipeInstallStepDpkgInstallation {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  GuestPoliciesRecipeInstallStepDpkgInstallation({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    return map;
  }

  factory GuestPoliciesRecipeInstallStepDpkgInstallation.fromMap(
      Map<String, dynamic> map) {
    return GuestPoliciesRecipeInstallStepDpkgInstallation(
      artifactId: map['artifactId'] as String,
    );
  }
}
