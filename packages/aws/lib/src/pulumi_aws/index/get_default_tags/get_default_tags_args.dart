// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDefaultTags.
class GetDefaultTagsArgs {
  final pulumi.Input<String>? id;

  GetDefaultTagsArgs({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GetDefaultTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultTagsArgs(
      id: pulumi.Input.asOptionalInput<String>(map['id']),
    );
  }
}
