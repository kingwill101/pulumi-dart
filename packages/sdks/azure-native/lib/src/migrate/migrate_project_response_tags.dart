// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the tags.
class MigrateProjectResponseTags {
  final pulumi.Input<String>? additionalProperties;

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
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

