// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_outpost_get_outpost_args_doc}
/// Arguments for getOutpost.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_outpost_get_outpost_args_doc}
class GetOutpostArgs {
  /// ARN.
  final pulumi.Input<String?>? arn;
  /// Identifier of the Outpost.
  final pulumi.Input<String?>? id;
  /// Name of the Outpost.
  final pulumi.Input<String?>? name;
  /// AWS Account identifier of the Outpost owner.
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The Outpost tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetOutpostArgs].
  /// [arn] ARN.
  /// [id] Identifier of the Outpost.
  /// [name] Name of the Outpost.
  /// [ownerId] AWS Account identifier of the Outpost owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The Outpost tags.
  const GetOutpostArgs({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
