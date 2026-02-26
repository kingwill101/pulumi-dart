// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Version.
class VersionArgs {
  /// The developer-provided description of this version.
  final Input<String>? description;

  /// The Flow to create an Version for.
  /// Format: projects/<Project ID>/agent.
  final Input<String>? parent;

  VersionArgs({
    this.description,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory VersionArgs.fromMap(Map<String, dynamic> map) {
    return VersionArgs(
      description: Input.asOptionalInput<String>(map['description']),
      parent: Input.asOptionalInput<String>(map['parent']),
    );
  }
}
