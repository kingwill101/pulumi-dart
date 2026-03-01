// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_outpost_get_outpost_args_doc}
/// Arguments for getOutpost.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_outpost_get_outpost_args_doc}
class GetOutpostArgs {
  /// ARN.
  final pulumi.Input<String>? arn;
  /// Identifier of the Outpost.
  final pulumi.Input<String>? id;
  /// Name of the Outpost.
  final pulumi.Input<String>? name;
  /// AWS Account identifier of the Outpost owner.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Outpost tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetOutpostArgs].
  /// [arn] ARN.
  /// [id] Identifier of the Outpost.
  /// [name] Name of the Outpost.
  /// [ownerId] AWS Account identifier of the Outpost owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The Outpost tags.
  GetOutpostArgs({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetOutpostArgs.fromMap(Map<String, dynamic> map) {
    return GetOutpostArgs(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

