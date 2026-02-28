// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_schemas_discoverer_discoverer_args_doc}
/// The set of arguments for Discoverer.
/// {@endtemplate}
/// {@macro pulumi_schemas_discoverer_discoverer_args_doc}
class DiscovererArgs {
  /// The description of the discoverer. Maximum of 256 characters.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the event bus to discover event schemas on.
  final pulumi.Input<String> sourceArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiscovererArgs].
  /// [description] The description of the discoverer. Maximum of 256 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] The ARN of the event bus to discover event schemas on.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DiscovererArgs({
    String? description,
    String? region,
    required String sourceArn,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceArn = pulumi.Input.asInput<String>(sourceArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'region': ?region,
      'sourceArn': sourceArn,
      'tags': ?tags,
    };
  }

  factory DiscovererArgs.fromMap(Map<String, dynamic> map) {
    return DiscovererArgs(
      description: map['description'] == null ? null : map['description'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sourceArn: map['sourceArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

