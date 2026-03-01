// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directmail_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_directmail_tag_tag_args_doc}
class TagArgs {
  /// The name of the tag. The name must be `1` to `50` characters in length, and can contain letters and digits.
  final pulumi.Input<String> tagName;

  /// Creates a new [TagArgs].
  /// [tagName] The name of the tag. The name must be `1` to `50` characters in length, and can contain letters and digits.
  TagArgs({
    required pulumi.Output<String> tagName,
  }) :
      tagName = pulumi.Input.asInput<String>(tagName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagName': tagName,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      tagName: pulumi.Output.create<String>(map['tagName'] as String),
    );
  }
}

