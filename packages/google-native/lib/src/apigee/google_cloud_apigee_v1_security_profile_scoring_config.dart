// ignore_for_file: unused_element, unnecessary_cast

/// Security configurations to manage scoring.
class GoogleCloudApigeeV1SecurityProfileScoringConfig {
  /// Description of the config.
  final String? description;

  /// Path of the component config used for scoring.
  final String? scorePath;

  /// Title of the config.
  final String? title;

  /// Creates a new [GoogleCloudApigeeV1SecurityProfileScoringConfig].
  /// [description] Description of the config.
  /// [scorePath] Path of the component config used for scoring.
  /// [title] Title of the config.
  GoogleCloudApigeeV1SecurityProfileScoringConfig({
    this.description,
    this.scorePath,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final scorePathValue = scorePath;
    if (scorePathValue != null) {
      map['scorePath'] = scorePathValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1SecurityProfileScoringConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityProfileScoringConfig(
      description:
          map['description'] == null ? null : map['description'] as String,
      scorePath: map['scorePath'] == null ? null : map['scorePath'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
