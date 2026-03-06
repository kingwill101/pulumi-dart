// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefaultTags {
  /// Resource tags to default across all resources. Can also be configured with environment variables like `TF_AWS_DEFAULT_TAGS_&lt;tag_name&gt;`.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DefaultTags].
  /// [tags] Resource tags to default across all resources. Can also be configured with environment variables like `TF_AWS_DEFAULT_TAGS_&lt;tag_name&gt;`.
  const DefaultTags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory DefaultTags.fromMap(Map<String, dynamic> map) {
    return DefaultTags(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

