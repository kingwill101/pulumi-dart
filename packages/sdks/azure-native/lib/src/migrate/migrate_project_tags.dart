// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the tags.
class MigrateProjectTags {
  final pulumi.Input<String?>? additionalProperties;

  /// Creates a new [MigrateProjectTags].
  /// [additionalProperties] Optional.
  const MigrateProjectTags({
    this.additionalProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
    };
  }

  factory MigrateProjectTags.fromMap(Map<String, dynamic> map) {
    return MigrateProjectTags(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
