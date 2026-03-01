// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesRecipeInstallStepRpmInstallation {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Creates a new [GuestPoliciesRecipeInstallStepRpmInstallation].
  /// [artifactId] The id of the relevant artifact in the recipe.
  GuestPoliciesRecipeInstallStepRpmInstallation({required this.artifactId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactId': artifactId};
  }

  factory GuestPoliciesRecipeInstallStepRpmInstallation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GuestPoliciesRecipeInstallStepRpmInstallation(
      artifactId: map['artifactId'] as String,
    );
  }
}
