// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_get_tag_values_get_tag_values_args_doc}
/// Arguments for getTagValues.
/// {@endtemplate}
/// {@macro pulumi_tags_get_tag_values_get_tag_values_args_doc}
class GetTagValuesArgs {
  /// The resource name of the parent tagKey in format `tagKey/{name}`.
  final pulumi.Input<String> parent;

  /// Creates a new [GetTagValuesArgs].
  /// [parent] The resource name of the parent tagKey in format `tagKey/{name}`.
  GetTagValuesArgs({
    required String parent,
  }) : parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    return map;
  }

  factory GetTagValuesArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValuesArgs(
      parent: map['parent'] as String,
    );
  }
}
