// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_get_subnet_group_get_subnet_group_args_doc}
/// Arguments for getSubnetGroup.
/// {@endtemplate}
/// {@macro pulumi_redshift_get_subnet_group_get_subnet_group_args_doc}
class GetSubnetGroupArgs {
  /// Name of the cluster subnet group for which information is requested.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags associated to the Subnet Group
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSubnetGroupArgs].
  /// [name] Name of the cluster subnet group for which information is requested.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags associated to the Subnet Group
  GetSubnetGroupArgs({
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetSubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetGroupArgs(
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

