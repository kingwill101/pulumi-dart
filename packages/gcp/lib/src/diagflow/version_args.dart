// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_diagflow_version_version_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_diagflow_version_version_args_doc}
class VersionArgs {
  /// The developer-provided description of this version.
  final pulumi.Input<String>? description;

  /// The Flow to create an Version for.
  /// Format: projects/<Project ID>/agent.
  final pulumi.Input<String>? parent;

  /// Creates a new [VersionArgs].
  /// [description] The developer-provided description of this version.
  /// [parent] The Flow to create an Version for.
  VersionArgs({
    String? description,
    String? parent,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        parent = pulumi.Input.asOptionalInput<String>(parent);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
    );
  }
}
