// ignore_for_file: unused_element, unnecessary_cast


class GuestPoliciesRecipeUpdateStepRpmInstallation {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Creates a new [GuestPoliciesRecipeUpdateStepRpmInstallation].
  /// [artifactId] The id of the relevant artifact in the recipe.
  GuestPoliciesRecipeUpdateStepRpmInstallation({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
    };
  }

  factory GuestPoliciesRecipeUpdateStepRpmInstallation.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStepRpmInstallation(
      artifactId: map['artifactId'] as String,
    );
  }
}

