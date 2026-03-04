// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_subnet_group_get_subnet_group_args_doc}
/// Arguments for getSubnetGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_get_subnet_group_get_subnet_group_args_doc}
class GetSubnetGroupArgs {
  /// Name of the RDS database subnet group.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSubnetGroupArgs].
  /// [name] Name of the RDS database subnet group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSubnetGroupArgs({required this.name, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region};
  }

  factory GetSubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
