// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTagValues.
class GetTagValuesArgs {
  /// The resource name of the parent tagKey in format `tagKey/{name}`.
  final pulumi.Input<String> parent;

  GetTagValuesArgs({
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    return map;
  }

  factory GetTagValuesArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValuesArgs(
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
