// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatchomni_view_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_cloudwatchomni_view_view_args_doc}
class ViewArgs {
  /// SQL query that defines the view. Must be 1 to 10000 characters. The service validates the query when the view is created or updated.
  final pulumi.Input<String> definition;
  /// Description of the view. Must be 1 to 1024 characters.
  final pulumi.Input<String?>? description;
  /// Name of the view. Must start with `view.` followed by a lowercase letter or digit, contain only lowercase letters, digits, underscores and hyphens, and be 6 to 256 characters long. Unique within the account and Region. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ViewArgs].
  /// [definition] SQL query that defines the view. Must be 1 to 10000 characters. The service validates the query when the view is created or updated.
  /// [description] Description of the view. Must be 1 to 1024 characters.
  /// [name] Name of the view. Must start with `view.` followed by a lowercase letter or digit, contain only lowercase letters, digits, underscores and hyphens, and be 6 to 256 characters long. Unique within the account and Region. Changing this value forces replacement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ViewArgs({
    required this.definition,
    this.description,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      definition: pulumi.Input.fromValue(map['definition'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
