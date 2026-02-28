// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_diagflow_cx_version_cx_version_args_doc}
/// The set of arguments for CxVersion.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_version_cx_version_args_doc}
class CxVersionArgs {
  /// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// The human-readable name of the version. Limit of 64 characters.
  final pulumi.Input<String> displayName;

  /// The Flow to create an Version for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  final pulumi.Input<String>? parent;

  /// Creates a new [CxVersionArgs].
  /// [description] The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the version. Limit of 64 characters.
  /// [parent] The Flow to create an Version for.
  CxVersionArgs({
    String? description,
    required String displayName,
    String? parent,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        parent = pulumi.Input.asOptionalInput<String>(parent);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory CxVersionArgs.fromMap(Map<String, dynamic> map) {
    return CxVersionArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
    );
  }
}
