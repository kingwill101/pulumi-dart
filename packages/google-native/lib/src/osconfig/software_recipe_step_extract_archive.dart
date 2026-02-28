// ignore_for_file: unused_element, unnecessary_cast

import 'software_recipe_step_extract_archive_type.dart';

/// Extracts an archive of the type specified in the specified directory.
class SoftwareRecipeStepExtractArchive {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Directory to extract archive to. Defaults to `/` on Linux or `C:\` on Windows.
  final String? destination;

  /// The type of the archive to extract.
  final SoftwareRecipeStepExtractArchiveType type;

  /// Creates a new [SoftwareRecipeStepExtractArchive].
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [destination] Directory to extract archive to. Defaults to `/` on Linux or `C:\` on Windows.
  /// [type] The type of the archive to extract.
  SoftwareRecipeStepExtractArchive({
    required this.artifactId,
    this.destination,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue;
    }
    map['type'] = type.value;
    return map;
  }

  factory SoftwareRecipeStepExtractArchive.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepExtractArchive(
      artifactId: map['artifactId'] as String,
      destination:
          map['destination'] == null ? null : map['destination'] as String,
      type:
          SoftwareRecipeStepExtractArchiveType.fromValue(map['type'] as String),
    );
  }
}
