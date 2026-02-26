// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTagValue.
class GetTagValueArgs {
  /// The resource name of the parent tagKey in format `tagKey/{name}`.
  final Input<String> parent;

  /// The tag value's short_name.
  final Input<String> shortName;

  GetTagValueArgs({
    required this.parent,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['shortName'] = shortName;
    return map;
  }

  factory GetTagValueArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValueArgs(
      parent: Input.asInput<String>(map['parent']),
      shortName: Input.asInput<String>(map['shortName']),
    );
  }
}
