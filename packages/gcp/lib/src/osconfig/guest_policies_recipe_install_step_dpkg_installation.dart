// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesRecipeInstallStepDpkgInstallation {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Creates a new [GuestPoliciesRecipeInstallStepDpkgInstallation].
  /// [artifactId] The id of the relevant artifact in the recipe.
  GuestPoliciesRecipeInstallStepDpkgInstallation({required this.artifactId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactId': artifactId};
  }

  factory GuestPoliciesRecipeInstallStepDpkgInstallation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GuestPoliciesRecipeInstallStepDpkgInstallation(
      artifactId: map['artifactId'] as String,
    );
  }
}
