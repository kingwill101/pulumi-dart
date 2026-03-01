// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tag_meta_tag_meta_tag_args_doc}
/// The set of arguments for MetaTag.
/// {@endtemplate}
/// {@macro pulumi_tag_meta_tag_meta_tag_args_doc}
class MetaTagArgs {
  /// The key of the tag meta tag. key must be 1 to 128 characters in length.
  final pulumi.Input<String> key;
  /// The values of the tag meta tag.
  final pulumi.Input<List<String>> values;

  /// Creates a new [MetaTagArgs].
  /// [key] The key of the tag meta tag. key must be 1 to 128 characters in length.
  /// [values] The values of the tag meta tag.
  MetaTagArgs({
    required String key,
    required List<String> values,
  }) :
      key = pulumi.Input.asInput<String>(key),
      values = pulumi.Input.asInput<List<String>>(values);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory MetaTagArgs.fromMap(Map<String, dynamic> map) {
    return MetaTagArgs(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

