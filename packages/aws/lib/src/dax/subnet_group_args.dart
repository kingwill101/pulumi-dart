// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dax_subnet_group_subnet_group_args_doc}
/// The set of arguments for SubnetGroup.
/// {@endtemplate}
/// {@macro pulumi_dax_subnet_group_subnet_group_args_doc}
class SubnetGroupArgs {
  /// A description of the subnet group.
  final pulumi.Input<String>? description;

  /// The name of the subnet group.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list of VPC subnet IDs for the subnet group.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [SubnetGroupArgs].
  /// [description] A description of the subnet group.
  /// [name] The name of the subnet group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] A list of VPC subnet IDs for the subnet group.
  SubnetGroupArgs({
    String? description,
    String? name,
    String? region,
    required List<String> subnetIds,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        subnetIds = pulumi.Input.asInput<List<String>>(subnetIds);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetIds'] = subnetIds;
    return map;
  }

  factory SubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return SubnetGroupArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}
