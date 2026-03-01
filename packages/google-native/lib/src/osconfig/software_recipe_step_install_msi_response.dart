// ignore_for_file: unused_element, unnecessary_cast

/// Installs an MSI file.
class SoftwareRecipeStepInstallMsiResponse {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final List<int> allowedExitCodes;

  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  final List<String> flags;

  /// Creates a new [SoftwareRecipeStepInstallMsiResponse].
  /// [allowedExitCodes] Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [flags] The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  SoftwareRecipeStepInstallMsiResponse({
    required this.allowedExitCodes,
    required this.artifactId,
    required this.flags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': allowedExitCodes,
      'artifactId': artifactId,
      'flags': flags,
    };
  }

  factory SoftwareRecipeStepInstallMsiResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SoftwareRecipeStepInstallMsiResponse(
      allowedExitCodes: (map['allowedExitCodes'] as List).cast<int>(),
      artifactId: map['artifactId'] as String,
      flags: (map['flags'] as List).cast<String>(),
    );
  }
}
