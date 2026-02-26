// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CxVersion.
class CxVersionArgs {
  /// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  final Input<String>? description;

  /// The human-readable name of the version. Limit of 64 characters.
  final Input<String> displayName;

  /// The Flow to create an Version for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  final Input<String>? parent;

  CxVersionArgs({
    this.description,
    required this.displayName,
    this.parent,
  });

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
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      parent: Input.asOptionalInput<String>(map['parent']),
    );
  }
}
