// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_key_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_key_get_key_args_doc}
class GetKeyArgs {
  /// ID of the API Key to look up.
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetKeyArgs].
  /// [id] ID of the API Key to look up.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags for the resource.
  GetKeyArgs({
    required pulumi.Output<String> id,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

