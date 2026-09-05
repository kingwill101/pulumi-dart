// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dax_subnet_group_subnet_group_args_doc}
/// The set of arguments for SubnetGroup.
/// {@endtemplate}
/// {@macro pulumi_dax_subnet_group_subnet_group_args_doc}
class SubnetGroupArgs {
  /// A description of the subnet group.
  final pulumi.Input<String?>? description;
  /// The name of the subnet group.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A list of VPC subnet IDs for the subnet group.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [SubnetGroupArgs].
  /// [description] A description of the subnet group.
  /// [name] The name of the subnet group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] A list of VPC subnet IDs for the subnet group.
  const SubnetGroupArgs({
    this.description,
    this.name,
    this.region,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'subnetIds': subnetIds,
    };
  }

  factory SubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return SubnetGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}
