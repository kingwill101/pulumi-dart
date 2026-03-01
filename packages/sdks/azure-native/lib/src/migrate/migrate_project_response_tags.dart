// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the tags.
class MigrateProjectResponseTags {
  final String? additionalProperties;

  /// Creates a new [MigrateProjectResponseTags].
  /// [additionalProperties] Optional.
  MigrateProjectResponseTags({
    this.additionalProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
    };
  }

  factory MigrateProjectResponseTags.fromMap(Map<String, dynamic> map) {
    return MigrateProjectResponseTags(
      additionalProperties: map['additionalProperties'] == null ? null : map['additionalProperties'] as String,
    );
  }
}

