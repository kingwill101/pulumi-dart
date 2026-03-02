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
    this.arn,
    this.id,
    this.name,
    this.ownerId,
    this.region,
    this.tags,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

