// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_rds_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// Name of the RDS instance.
  final pulumi.Input<String>? dbInstanceIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match a pair on the desired instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetInstanceArgs].
  /// [dbInstanceIdentifier] Name of the RDS instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired instance.
  GetInstanceArgs({
    String? dbInstanceIdentifier,
    String? region,
    Map<String, String>? tags,
  }) :
      dbInstanceIdentifier = pulumi.Input.asOptionalInput<String>(dbInstanceIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null ? null : map['dbInstanceIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

