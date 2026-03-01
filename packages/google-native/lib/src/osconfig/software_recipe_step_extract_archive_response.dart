// ignore_for_file: unused_element, unnecessary_cast

/// Extracts an archive of the type specified in the specified directory.
class SoftwareRecipeStepExtractArchiveResponse {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Directory to extract archive to. Defaults to `/` on Linux or `C:\` on Windows.
  final String destination;

  /// The type of the archive to extract.
  final String type;

  /// Creates a new [SoftwareRecipeStepExtractArchiveResponse].
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [destination] Directory to extract archive to. Defaults to `/` on Linux or `C:\` on Windows.
  /// [type] The type of the archive to extract.
  SoftwareRecipeStepExtractArchiveResponse({
    required this.artifactId,
    required this.destination,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'destination': destination,
      'type': type,
    };
  }

  factory SoftwareRecipeStepExtractArchiveResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SoftwareRecipeStepExtractArchiveResponse(
      artifactId: map['artifactId'] as String,
      destination: map['destination'] as String,
      type: map['type'] as String,
    );
  }
}
