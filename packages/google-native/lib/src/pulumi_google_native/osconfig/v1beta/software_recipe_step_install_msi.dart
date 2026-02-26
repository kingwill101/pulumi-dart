// ignore_for_file: unused_element, unnecessary_cast

/// Installs an MSI file.
class SoftwareRecipeStepInstallMsi {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final List<int>? allowedExitCodes;

  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  final List<String>? flags;

  SoftwareRecipeStepInstallMsi({
    this.allowedExitCodes,
    required this.artifactId,
    this.flags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedExitCodesValue = allowedExitCodes;
    if (allowedExitCodesValue != null) {
      map['allowedExitCodes'] = allowedExitCodesValue;
    }
    map['artifactId'] = artifactId;
    final flagsValue = flags;
    if (flagsValue != null) {
      map['flags'] = flagsValue;
    }
    return map;
  }

  factory SoftwareRecipeStepInstallMsi.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallMsi(
      allowedExitCodes: map['allowedExitCodes'] == null
          ? null
          : (map['allowedExitCodes'] as List).cast<int>(),
      artifactId: map['artifactId'] as String,
      flags:
          map['flags'] == null ? null : (map['flags'] as List).cast<String>(),
    );
  }
}
