// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesRecipeUpdateStepArchiveExtraction {
  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// Directory to extract archive to. Defaults to / on Linux or C:\ on Windows.
  final String? destination;

  /// The type of the archive to extract.
  /// Possible values are: `TAR`, `TAR_GZIP`, `TAR_BZIP`, `TAR_LZMA`, `TAR_XZ`, `ZIP`.
  final String type;

  /// Creates a new [GuestPoliciesRecipeUpdateStepArchiveExtraction].
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [destination] Directory to extract archive to. Defaults to / on Linux or C:\ on Windows.
  /// [type] The type of the archive to extract.
  GuestPoliciesRecipeUpdateStepArchiveExtraction({
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
    map['type'] = type;
    return map;
  }

  factory GuestPoliciesRecipeUpdateStepArchiveExtraction.fromMap(
      Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStepArchiveExtraction(
      artifactId: map['artifactId'] as String,
      destination:
          map['destination'] == null ? null : map['destination'] as String,
      type: map['type'] as String,
    );
  }
}
