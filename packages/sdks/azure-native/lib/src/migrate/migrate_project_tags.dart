// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the tags.
class MigrateProjectTags {
  final String? additionalProperties;

  /// Creates a new [MigrateProjectTags].
  /// [additionalProperties] Optional.
  MigrateProjectTags({
    this.additionalProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
    };
  }

  factory MigrateProjectTags.fromMap(Map<String, dynamic> map) {
    return MigrateProjectTags(
      additionalProperties: map['additionalProperties'] == null ? null : map['additionalProperties'] as String,
    );
  }
}

